% friction
b = 0.1*ones(7,1);
param
load('EOM_mcphi.mat')

M_vec = double(subs(M1));
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


c = double(subs(c));
phi = double(subs(phi));
