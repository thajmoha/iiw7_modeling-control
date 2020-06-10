% Six-Parameter Trajectory - 5th order polynomial coefficients
function a = coeff_poly5(t0,t1,x0,x1,xd0,xd1,xdd0,xdd1)
A = [1 t0 t0^2   t0^3    t0^4    t0^5;
     0  1 2*t0 3*t0^2  4*t0^3  5*t0^4;
     0  0    2   6*t0 12*t0^2 20*t0^3;
     1 t1 t1^2   t1^3    t1^4    t1^5;
     0  1 2*t1 3*t1^2  4*t1^3  5*t1^4;
     0  0    2   6*t1 12*t1^2 20*t1^3];
b = [x0; xd0; xdd0; x1; xd1; xdd1];
a = A\b;
