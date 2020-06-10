% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode2(t,x) 
global u ode_indx tt iper tf
ode_indx = ode_indx +1; 
tt(ode_indx) = t;
dof  = 7;
ns = dof*2;



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

%define M c phi
iiwa_mat; 
% iiwa_mat2; 

%desired_trajectory
% desired_case = 2;
% desired_pathes;
% load('desired_trajectory_joints.mat');
% load('poly_coef3.mat')
% for i=1:7
%     q_des(i,1) =polyval(Q_theta(i,:),t) ;
%     qdot_des(i,1) =polyval(Q_theta_dot(i,:),t) ;
%     qddot_des(i,1) =polyval(Q_theta_ddot(i,:),t) ;
% end
load('desired_trajectory_joints3.mat')
q_des(1,1) = interp1(time,Theta(1,:),t);
q_des(2,1) = interp1(time,Theta(2,:),t);
q_des(3,1) = interp1(time,Theta(3,:),t);
q_des(4,1) = interp1(time,Theta(4,:),t);
q_des(5,1) = interp1(time,Theta(5,:),t);
q_des(6,1) = interp1(time,Theta(6,:),t);
q_des(7,1) = interp1(time,Theta(7,:),t);

qdot_des(1,1) = interp1(time,Theta_dot(1,:),t);
qdot_des(2,1) = interp1(time,Theta_dot(2,:),t);
qdot_des(3,1) = interp1(time,Theta_dot(3,:),t);
qdot_des(4,1) = interp1(time,Theta_dot(4,:),t);
qdot_des(5,1) = interp1(time,Theta_dot(5,:),t);
qdot_des(6,1) = interp1(time,Theta_dot(6,:),t);
qdot_des(7,1) = interp1(time,Theta_dot(7,:),t);

qddot_des(1,1) = interp1(time,Theta_ddot(1,:),t);
qddot_des(2,1) = interp1(time,Theta_ddot(2,:),t);
qddot_des(3,1) = interp1(time,Theta_ddot(3,:),t);
qddot_des(4,1) = interp1(time,Theta_ddot(4,:),t);
qddot_des(5,1) = interp1(time,Theta_ddot(5,:),t);
qddot_des(6,1) = interp1(time,Theta_ddot(6,:),t);
qddot_des(7,1) = interp1(time,Theta_ddot(7,:),t);


% define controller
% sliding_control;
sliding_control2;


% Actuator forces/torques
xdd = M\(-c-phi-B.*x(dof+1:ns)+u(:,ode_indx)); %accelerations
xder = [x(dof+1:ns); xdd]; %state time derivatives

perc = t/tf*100;
perc_d = [10:10:100];
if round(perc,0) ==perc_d(iper)
    perc_Str = strcat(num2str(perc_d(iper)),'%');
    display(perc_Str)
    if iper<length(perc_d)
    iper = iper+1;
    else 
        iper = length(perc_d);
    end
end
clear M c phi