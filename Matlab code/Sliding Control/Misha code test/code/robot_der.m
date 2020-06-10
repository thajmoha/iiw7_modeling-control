function xder = robot_der(t,x)
global eta lambda eps index ts
g = 9.80665; %m/s^2
m2 = 1; m3 = 1; m4 = 1; m6 = 1;
Ix2 = 0.02; Iy2 = 0.02; Iz2 = 0.02;
Ix3 = 0.02; Iy3 = 0.02; Iz3 = 0.02;
Ix4 = 0.02; Iy4 = 0.02; Iz4 = 0.02;
Ix6 = 0.02; Iy6 = 0.02; Iz6 = 0.02;

% I123 = Izz1 + Iyy2 + Iyy3;

ns = size(x,1); %# of states
n = round(ns/2); %# of DOF
B = 0*ones(n,1); % linear friction coefficients

% components of equations of motion
load('eqn_of_motion');
%time trajectory
load('desired_theta');
if t < ts*index
    q_des     = theta_des(:,index);
    qdot_des  = theta_des_dot(:,index);
    qddot_des = theta_des_dot_dot(:,index);
else
    q_des     = theta_des(:,index);
    qdot_des  = theta_des_dot(:,index);
    qddot_des = theta_des_dot_dot(:,index);
% finding index
index = index+1
end

th1 = q_des(1); th2 = q_des(2); th3 = q_des(3); th4 = q_des(4); th5 = q_des(5); th6 = q_des(6);
th1_d = qdot_des(1); th2_d = qdot_des(2); th3_d = qdot_des(3); th4_d = qdot_des(4); th5_d = qdot_des(5); th6_d = qdot_des(6);

M   = double(subs(M));
phi = double(subs(phi));
c   = double(subs(c));

%sliding mode control
%assume the only uncertainity is froction coefficient 0<=B<=2*B
F = 2*B.*abs(x(n+1:ns));
k = F + eta; %robsustness gain
s = x(n+1:ns) - qdot_des + lambda*(x(1:n)-q_des); %Surfaces
sr = qddot_des - lambda*(x(n+1:ns)-qdot_des); %See notes
sw = k.*sign(s);

for i=1:n
   if abs(s(i)) <= eps
     %sw(i) = k(i)*tanh(s(i)/eps); %hyper-tangent
      sw(i) = k(i)*s(i)/eps; %saturation
   end
end

global u
u(:,index) = c + phi + B.*x(n+1:ns) + M*(sr - sw);

% Actuator forces/torques
xdd = M\(-c-phi-B.*x(n+1:ns)+u(:,index)); %accelerations
xder = [x(n+1:ns); xdd]; %state time derivatives
end
