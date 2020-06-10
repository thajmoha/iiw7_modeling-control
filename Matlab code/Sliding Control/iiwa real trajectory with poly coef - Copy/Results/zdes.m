function zd = zdes(c5,t)
global zc r
alpha = c5(1) + c5(2)*t + c5(3)*t.^2 + c5(4)*t.^3 + c5(5)*t.^4 + c5(6)*t.^5;
zd = zc + r*sin(alpha) ;