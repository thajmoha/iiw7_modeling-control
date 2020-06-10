function [px,py,ThE] = ff_fun(v)

t1 = v(1);
t2 = v(2);
t3 = v(3);


px = 2*cos(t1 + t2 + t3) + 2*cos(t1 + t2) + 2*cos(t1);
py = 2*sin(t1 + t2 + t3) + 2*sin(t1 + t2) + 2*sin(t1);

ThE = t1+t2+t3;



