% HW6 derivative equations
% x = [theta1; d2; theta1_dot; d2_dot];
% xder =x_dot =[theta1_dot; d2_dot; theta1_ddot; d2_ddot];
function xder = fun_ode_num(t,x)
global KD KP desired_joint 

g = 9.80665; %m/s^2
m1 = 1;  %kg
m2 = 1;  %kg
L = 1;
Iyy1 = 1;  %kg.m^2
Iyy2 = 1;  %kg.m^2
b1 = 1;
b2 = 1;

tau1 = 0.1*sin(t);
f2 = 0.1*sin(t);
          

th = x(1);
d2 = x(2);

thdot = x(3);
ddot = x(4);

b = [b1;b2];
tau = [tau1; f2];



M =[ m1*L^2 + m2*d2^2 + Iyy1 + Iyy2,  0;
                              0, m2];

phi =[ g*sin(th)*(L*m1 + d2*m2);
            -g*m2*cos(th)];
        
c =[2*d2*ddot*m2*thdot;
     -d2*m2*thdot^2];
 
xdd = M\(-c-phi-b.*x(3:4)+tau);
xder = [x(3); x(4); xdd(1); xdd(2)];
