%% Planner Manipulator Example:

%% Initiating
 syms theta_n d_n a_n alpha_n 
%% D_H table
DH_table

%% Forward Kinematic solution 
[dof,~] = size(DH);

T = eye(4);

for ijoint =1:dof
    Ti = TDHmat(DH(ijoint,:));    
    T_n(:,:,ijoint) = simplify(Ti);
    T = T*Ti;
end
T = simplify(T)
T_01 = T_n(:,:,1);
T_02 = T_01*T_n(:,:,2);
T_03 = T_02*T_n(:,:,3);


Tn(:,:,1) = T_01;
Tn(:,:,2) = T_02;
Tn(:,:,3) = T_03;
