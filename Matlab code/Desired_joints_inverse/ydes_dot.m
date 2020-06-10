function yd_dot = ydes_dot(c5,t)
global r
alpha = c5(1) + c5(2)*t + c5(3)*t.^2 + c5(4)*t.^3 + c5(5)*t.^4 + c5(6)*t.^5;
alpha_dot = c5(2) + 2*c5(3)*t + 3*c5(4)*t.^2 + 4*c5(5)*t.^3 + 5*c5(6)*t.^4;
yd_dot = -r*sin(alpha).*alpha_dot ;