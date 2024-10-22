% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode2(t,x)
global KD KP qt qtdot qtddot i
g = 9.80665; %m/s^2



          

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

u =  -KP*(x(1:7)-qt(i)) - KD*(x(8:end)-qtdot(i)) + phi;
 
xdd = M\(-c-phi-b.*x(8:end)+u);
xder = [x(8:end); xdd];
clear M c phi