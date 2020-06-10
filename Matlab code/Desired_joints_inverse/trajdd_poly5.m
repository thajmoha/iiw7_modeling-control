% Six-Parameter Trajectory - 5th order polynomial - Acceleration
function xdd=trajd_poly5(c5,t)

xdd = 2*c5(3) + 6*c5(4)*t + 12*c5(5)*t^2 + 20*c5(6)*t^3;
