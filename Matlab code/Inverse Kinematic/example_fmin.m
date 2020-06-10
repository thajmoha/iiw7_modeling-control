x0 = [0.1,10]
epsilon = .05;
% option  = optimset('TolFun',epsilon);
fun = @(x) ff(x,2);
x = fsolve(fun,x0);