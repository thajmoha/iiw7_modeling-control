% iiwa 7 derivative equations
% x = [theta1; theta2; theta3; theta4; theta5; theta6; theta7; theta1_dot; theta2_dot; theta3_dot; theta4_dot; theta5_dot; theta6_dot; theta7_dot];
% xder =x_dot =[theta1_dot; theta2_dot; theta3_dot; theta4_dot; theta5_dot; theta6_dot; theta7_dot; theta1_ddot; theta2_ddot; theta3_ddot; theta4_ddot; theta5_ddot; theta6_ddot; theta7_ddot];
function xder = integral_fun_ode(t,x)
global KD KP KI desired_joint 
% global_param
g = 9.80665; %m/s^2

        tau1 = -KD*x(1+14)-KP*x(1+7)-KI*(x(1)-desired_joint);
        tau2 = -KD*x(2+14)-KP*x(2+7)-KI*(x(2)-desired_joint);
        tau3 = -KD*x(3+14)-KP*x(3+7)-KI*(x(3)-desired_joint);
        tau4 = -KD*x(4+14)-KP*x(4+7)-KI*(x(4)-desired_joint);
        tau5 = -KD*x(5+14)-KP*x(5+7)-KI*(x(5)-desired_joint);
        tau6 = -KD*x(6+14)-KP*x(6+7)-KI*(x(6)-desired_joint);
        tau7 = -KD*x(7+14)-KP*x(7+7)-KI*(x(7)-desired_joint);

  
th1 = x(1);
th2 = x(2);
th3 = x(3);
th4 = x(4);
th5 = x(5);
th6 = x(6);
th7 = x(7);

th1dot = x(1+7);
th2dot = x(2+7);
th3dot = x(3+7);
th4dot = x(4+7);
th5dot = x(5+7);
th6dot = x(6+7);
th7dot = x(7+7);

b = 0.1*ones(7,1);

% b = [b1;b2;b2;b3;b4;b5;b6;b7];
tau = [tau1; tau2; tau3; tau4; tau5; tau6; tau7];


% toc
M_vec = zeros(49,1);
parfor elmIndex=1:49
   M_vec(elmIndex)=compute_mass(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,elmIndex); 
end
M = reshape(M_vec,[7,7]);
% toc
phi = zeros(7,1);
c=zeros(7,1);
parfor rowIndex=1:7
   phi(rowIndex)=compute_phi(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,g,rowIndex); 
   c(rowIndex)=compute_c(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
end
% t(end)
%  toc

xdd = M\(-c-phi-b.*x(15:end)+tau);
xder = [x(8:end); xdd];
clear M c phi
