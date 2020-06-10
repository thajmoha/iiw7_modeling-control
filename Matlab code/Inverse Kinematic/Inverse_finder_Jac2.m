%% Trajectory planning

%% cleaning
clear 
clc
close all
%% Initiating
tic
% Trajectory specs
R = 0.2; % radius
% X0 = sym(0); % strat point X
% Y0 = sym(0); % start point Y
X0 = -.1; % strat point X
Y0 = 0; % start point Y

% Boundary Condition problem
q0 = 0; % initial angle
qdot0 = 0; % initial velocity
qddot0 = 0; % initial acc.
qf = 2*pi; %final angle
qdotf = 0; %final velocity
qddotf = 0; %final acc.
t0 = 0; % start time 
tf = 2; % final time
a=Bcond(q0,qdot0,qddot0,qf,qdotf,qddotf,t0,tf);
p=fliplr(a');

syms t 
alpha_fun = p(1)*t^5 + p(2)*t^4 + p(3)*t^3 + p(4)*t^2 + p(5)*t + p(6);
x_fun = X0 + R*cos(alpha_fun);
y_fun =Y0 + R*sin(alpha_fun);

xdot_fun = diff(x_fun,t);
xddot_fun = diff(xdot_fun,t) ;

ydot_fun = (diff(y_fun,t));
yddot_fun = (diff(ydot_fun,t));

dt =tf/50;
time = 0:dt:tf;
X =  double(subs(x_fun,time));
Xdot = double(subs(xdot_fun,time));
Xddot = double(subs(xddot_fun,time));

Y =  double(subs(y_fun,time));
Ydot = double(subs(ydot_fun,time));
Yddot = double(subs(yddot_fun,time));

Z = zeros(1,length(time));

 
nx = 1*ones(1,length(time));
ny = 0*ones(1,length(time));
nz = 0*ones(1,length(time));

ox = 0*ones(1,length(time));
oy = 1*ones(1,length(time));
oz = 0*ones(1,length(time));

ax = 0*ones(1,length(time));
ay = 0*ones(1,length(time));
az = -1*ones(1,length(time));

toc

DH_table

theta0 = DH_iiwa7(:,4);
% theta0 = [.1;.1;.1;.1;.1;.1;.1];

xd = X;
yd = Y;
zd = Z;
Theta = zeros(7,length(xd));

for i=1:length(xd)
error_norm = 100;    
epsilon = 0.01;
while error_norm > epsilon
    J = iwwa_Jac(theta0);
    theta = theta0 - pinv(J)*F(theta0,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
    error_norm = norm(theta - theta0)
    theta0 = theta;
end
Theta(:,i)=theta0;
end

Theta_star = wrapTo2Pi(Theta);

toc

figure
plot(time,Theta_star(1,:)*180/pi,'b')
hold on 
plot(time,Theta_star(2,:)*180/pi,'r')
grid on 
legend('\theta_1','\theta_2')

for i=1:length(time)
     v = Theta_star(:,i);
    [pxd(i),pyd(i),pzd(i),nxd(i),nyd(i),nzd(i),oxd(i),oyd(i),ozd(i),axd(i),ayd(i),azd(i)] = ff_fun(v);
end

figure
plot(xd,yd,'b--')
grid on 
hold on
plot(pxd,pyd,'ro')

toc  