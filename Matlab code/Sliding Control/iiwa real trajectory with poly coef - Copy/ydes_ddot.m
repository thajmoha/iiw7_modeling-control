function yd_ddot = ydes_dot(c5,t)
global r
alpha = c5(1) + c5(2)*t + c5(3)*t.^2 + c5(4)*t.^3 + c5(5)*t.^4 + c5(6)*t.^5;
alpha_dot = c5(2) + 2*c5(3)*t + 3*c5(4)*t.^2 + 4*c5(5)*t.^3 + 5*c5(6)*t.^4;
alpha_ddot = 2*c5(3) + 6*c5(4)*t + 12*c5(5)*t.^2 + 20*c5(6)*t.^3;
yd_ddot = -r*cos(alpha).*alpha_dot.^2 -r*sin(alpha).*alpha_ddot ;