% Boundary Condition problem
alpha_0 = 0; % initial angle
alpha_f = 1; %final angle

alpha_dot0 = 0; % initial velocity
alpha_dotf = 0; %final velocity

alpha_ddot0 = 0; % initial acc.
alpha_ddotf = 0; %final acc.

t0 = 0; % start time 
tf = 1; % final time

a=coeff_poly5(t0,tf,alpha_0,alpha_f,alpha_dot0,alpha_dotf,alpha_ddot0,alpha_ddotf);

time = linspace(t0,tf,1000);
for i=1:length(time)
    [yd]=funqdes(a,time(i));
    qt(i)=yd(1);
    qt_dot(i)=yd(2);
    qt_ddot(i)=yd(3);
end
plot(time,qt)
hold on 
plot(time,qt_dot)
hold on 
plot(time,qt_ddot)
