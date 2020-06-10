%% symbolic program for iiwa 7 R800
% Turki Haj Mohamad 
% 4/18/2018


%% DH matrices
DH_table_sym
%% Forward Kinematic solution 
[dof,~] = size(DH_iiwa7);

T = eye(4);

for ijoint =1:dof
    Ti = TDHmat(DH_iiwa7(ijoint,:));    
    T_n(:,:,ijoint) = simplify(Ti);
    T = T*Ti;
end
T = simplify(T)
T_01 = T_n(:,:,1);
T_02 = T_01*T_n(:,:,2);
T_03 = T_02*T_n(:,:,3);
T_04 = T_03*T_n(:,:,4);
T_05 = T_04*T_n(:,:,5);
T_06 = T_05*T_n(:,:,6);
T_07 = T_06*T_n(:,:,7);

Tn(:,:,1) = T_01;
Tn(:,:,2) = T_02;
Tn(:,:,3) = T_03;
Tn(:,:,4) = T_04;
Tn(:,:,5) = T_05;
Tn(:,:,6) = T_06;
Tn(:,:,7) = T_07;

