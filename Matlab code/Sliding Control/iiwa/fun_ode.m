% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode(t,x)
dof  = 7;

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

%desired_trajectory
% desired_case = 2;
% desired_pathes;

% define controller
sliding_control;

xdd = M\(-c -phi -b.*x(dof+1:end) + u);
xder = [x(dof+1:end); xdd];

clear M c phi