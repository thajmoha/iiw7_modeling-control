%3-Link cylidrical robot data, trajectory, and control
% data
g = 9.80665; %m/s^2
m2 = 1;  %kg
m3 = 1;  %kg
Izz1 = .02;  %kg.m^2
Iyy2 = .02;  %kg.m^2
Iyy3 = .02;  %kg.m^2
I123 = Izz1 + Iyy2 + Iyy3;
ns = size(x,1); %# of states
n = round(ns/2); %# of DOF
B = 0.01*ones(n,1); % linear friction coefficients

% components of equations of motion
phi = [0; (m2+m3)*g; 0]; %gravitational terms
M = [m3*x(3)^2+I123 0 0; 0 m2+m3 0; 0 0 m3]; %Mass Matrix
c = [2*m3*x(3)*x(4)*x(6); 0; -m3*x(3)*x(4)^2]; %centrifugal/Coriolis terms

%desired trajectory
if traj_flag == 1
    %set point
    q_des = [pi; 1; 2];
    qdot_des = zeros(3,1);
    qddot_des = zeros(3,1);
else
    %time trajectory
    %joint 1 move from 0 to pi
    a = coeff_poly5(t0,tfin,0,pi,0,0,0,0);
    q_des(1,1) = traj_poly5(a,t);
    qdot_des(1,1) = trajd_poly5(a,t);
    qddot_des(1,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 1
    a = coeff_poly5(t0,tfin,0,1,0,0,0,0);
    q_des(2,1) = traj_poly5(a,t);
    qdot_des(2,1) = trajd_poly5(a,t);
    qddot_des(2,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 2
    a = coeff_poly5(t0,tfin,0,2,0,0,0,0);
    q_des(3,1) = traj_poly5(a,t);
    qdot_des(3,1) = trajd_poly5(a,t);
    qddot_des(3,1) = trajdd_poly5(a,t);
end

if control_flag == 1
    % PD control with gravity correction
    u = -KP*(x(1:n)-q_des) - KD*(x(n+1:ns)-qdot_des) + phi;
else
    %sliding mode control
    %assume the only uncertainity is froction coefficient 0<=B<=2*B
    F = 2*B.*abs(x(n+1:ns));
    k = F + eta; %robsustness gain
    s = x(n+1:ns) - qdot_des + lambda.*(x(1:n)-q_des); %Surfaces
    sr = qddot_des - lambda.*(x(n+1:ns)-qdot_des); %See notes
    sw = k.*sign(s);
    for i=1:n
        if abs(s(i)) <= eps
            %sw(i) = k(i)*tanh(s(i)/eps); %hyper-tangent
            sw(i) = k(i)*s(i)/eps; %saturation
        end
    end
    u = c + phi + B.*x(n+1:ns) + M*(sr - sw);
end
