function M = mass_mat_forC(x) %#codegen
% Angles
th1 = x(1);
th2 = x(2);
th3 = x(3);
th4 = x(4);
th5 = x(5);
th6 = x(6);
th7 = x(7);
% angular speed
th1dot = x(1+7);
th2dot = x(2+7);
th3dot = x(3+7);
th4dot = x(4+7);
th5dot = x(5+7);
th6dot = x(6+7);
th7dot = x(7+7);