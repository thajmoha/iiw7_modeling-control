% friction
b = 0.1*ones(7,1);

% M matrix 
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


% phi & c
phi = zeros(7,1);
c=zeros(7,1);
parfor rowIndex=1:7
   phi(rowIndex)=phi_compute(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
   c(rowIndex)=c_compute(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
end
