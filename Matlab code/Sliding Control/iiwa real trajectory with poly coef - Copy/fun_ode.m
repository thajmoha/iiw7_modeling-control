% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode(t,x) 
global u ode_indx ts tt
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
if t<=(ts*ode_indx)
    q_des = Theta(:,ode_indx);
    qdot_des = Theta_dot(:,ode_indx);
    qddot_des = Theta_ddot(:,ode_indx);
else 
    q_des = Theta(:,ode_indx+1);
    qdot_des = Theta_dot(:,ode_indx+1);
    qddot_des = Theta_ddot(:,ode_indx+1);
%     ode_indx = min(ode_indx+1,1000)
    ode_indx = ode_indx +1
end

% define controller
% sliding_control;
sliding_control2;


% Actuator forces/torques
xdd = M\(-c-phi-B.*x(dof+1:ns)+u(:,ode_indx)); %accelerations
xder = [x(dof+1:ns); xdd]; %state time derivatives

clear M c phi