% Six-Parameter Trajectory - 5th order polynomial - Velocity
function xd=trajd_poly5(c5,t)

xd = c5(2) + 2*c5(3)*t + 3*c5(4)*t^2 + 4*c5(5)*t^3 + 5*c5(6)*t^4;
