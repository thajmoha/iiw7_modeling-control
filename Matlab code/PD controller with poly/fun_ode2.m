% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode2(t,x)
global u ode_indx dof ns
global KD KP 
ode_indx = ode_indx +1;          

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
load('poly_coef.mat')
for i=1:7
    qt(i,1) =polyval(Q_theta(i,:),t) ;
    qtdot(i,1) =polyval(Q_theta_dot(i,:),t) ;
end


u(:,ode_indx) =  -KP*(x(1:dof)-qt) - KD*(x(dof+1:ns)-qtdot) + phi;
 
xdd = M\(-c-phi-B.*x(dof+1:ns)+u(:,ode_indx));
xder = [x(dof+1:ns); xdd];
clear M c phi