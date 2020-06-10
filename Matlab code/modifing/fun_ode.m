% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode(t,x)
global KD KP 
desired_joint =1;

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

M_vec = zeros(28,1);
parfor elmIndex=1:28
   M_vec(elmIndex)=M_compute(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,elmIndex); 
end

A = zeros(7,7);
A(1:7,1) = M_vec(1:7);
A(2:7,2) = M_vec(8:13);
A(3:7,3) = M_vec(14:18);
A(4:7,4) = M_vec(19:22);
A(5:7,5) = M_vec(23:25);
A(6:7,6) = M_vec(26:27);
A(7,7) = M_vec(28);
[n,m]=size(A);
M=A'+A;
M(1:n+1:end)=diag(A);


% toc
phi = zeros(7,1);
c=zeros(7,1);
parfor rowIndex=1:7
   phi(rowIndex)=phi_compute(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
   c(rowIndex)=c_compute(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
end
% toc

u =  -KP*(x(1:7)-desired_joint ) - KD*(x(8:end)) + phi;
xdd = M\(-c-phi-b.*x(8:end)+u);
xder = [x(8:end); xdd];
clear M c phi