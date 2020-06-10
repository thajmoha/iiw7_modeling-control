%% Inverse Kinematic Solution
Forward_solution
% initiating
R_Edesired = sym('r',[3,3]);
syms px py pz
r_Edesired = [px;py;pz]
T_Edesired = [R_Edesired,r_Edesired];
T_Edesired = [T_Edesired;[0 0 0 1]];
% solve for t1
Eq1_left = simplify(inv(T_02)*T_Edesired)
T_27 = inv(T_02)*T;
Eq1_right = simplify(T_27)