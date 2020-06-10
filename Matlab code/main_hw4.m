%% Trajectory planning

clear 
clc
close all
%% Initiating
% Trajectory specs
R = 0.5; % radius
X0 = sym(1.5); % strat point X
Y0 = sym(1.5); % start point Y

% Boundary Condition problem
q0 = sym(pi); % initial angle
qdot0 = 0; % initial velocity
qddot0 = 0; % initial acc.
qf = 3*sym(pi); %final angle
qdotf = 0; %final velocity
qddotf = 0; %final acc.
t0 = 0; % start time 
tf = 1; % final time
a=Bcond(q0,qdot0,qddot0,qf,qdotf,qddotf,t0,tf);

syms t 
p=fliplr(a');

alpha_fun = p(1)*t^5 + p(2)*t^4 + p(3)*t^3 + p(4)*t^2 + p(5)*t + p(6);
x_fun = X0 + R*cos(alpha_fun);
y_fun =Y0 + R*sin(alpha_fun);

xdot_fun = diff(x_fun,t);
xddot_fun = diff(xdot_fun,t) ;

ydot_fun = simplify(diff(y_fun,t));
yddot_fun = simplify(diff(ydot_fun,t));

dt =tf/1000;
time = 0:dt:tf;
X =  double(subs(x_fun,time));
Xdot = double(subs(xdot_fun,time));
Xddot = double(subs(xddot_fun,time));

Y =  double(subs(y_fun,time));
Ydot = double(subs(ydot_fun,time));
Yddot = double(subs(yddot_fun,time));

% figure
% plot(X,Y)
% grid on 
% xlabel('x'),ylabel('y')
% figure
% plot(time,Xdot)
% grid on 
% xlabel('x'),ylabel('y')
% figure
% plot(time,Xddot)
% grid on 
% xlabel('x'),ylabel('y')
% figure
% plot(time,Ydot)
% grid on 
% xlabel('x'),ylabel('y')

% figure
% plot(time,Yddot)
% grid on 
% % hl = legend('$\dot{\theta}_{in}$');
% xlabel('x'),ylabel('$\dot{\phi}$','interpreter','latex')
%% Inverse Problem to find theta1 theta2 and theta3
t1= zeros(2,length(X));
t2=t1;
t3=t1;
for i = 1:length(X)
    xE = X(i);
    yE = Y(i);
    [t1(:,i),t2(:,i),t3(:,i)] = planner_inverse(xE,yE);
   
end

figure
plot(time,t1(1,:)*180/pi,'b',time,t1(2,:)*180/pi,'r','linewidth',1.2)
legend('sol1','sol2')
grid on 
xlabel('time'),ylabel('\theta_1','rotation',0)
set(gca,'fontsize',13)
title('Soltions for \theta_1')

figure
plot(time,t2(1,:)*180/pi,'b',time,t2(2,:)*180/pi,'r','linewidth',1.2)
legend('sol1','sol2')
grid on 
xlabel('time'),ylabel('\theta_2','rotation',0)
set(gca,'fontsize',13)
title('Soltions for \theta_2')

figure
plot(time,t3(1,:)*180/pi,'b',time,t3(2,:)*180/pi,'r','linewidth',1.2)
legend('sol1','sol2')
grid on 
xlabel('time'),ylabel('\theta_3','rotation',0)
set(gca,'fontsize',13)
title('Soltions for \theta_3')


%% Forward Solution
L1=1;
 L2=1;
 L3=1;


    Xa = L1*cos(t1(1,:))+L2*cos(t1(1,:)+t2(1,:))+L3*cos(t1(1,:)+t2(1,:)+t3(1,:));
    Ya = L1*sin(t1(1,:))+L2*sin(t1(1,:)+t2(1,:))+L3*sin(t1(1,:)+t2(1,:)+t3(1,:));


figure 
plot(Xa,Ya,'b--','linewidth',1.2)
hold on
plot(X,Y,'g-.','linewidth',1.2)
grid on 
xlabel('x'),ylabel('y')
axis([0.5,2.5,0.5,2.5])
vline(1.5,':m')
hline(1.5,':m')
set(gca,'fontsize',13)
title('Actula versus Desired Trajectory')
legend('Actual sol1','Desired')

    Xa = L1*cos(t1(2,:))+L2*cos(t1(2,:)+t2(2,:))+L3*cos(t1(2,:)+t2(2,:)+t3(2,:));
    Ya = L1*sin(t1(2,:))+L2*sin(t1(2,:)+t2(2,:))+L3*sin(t1(2,:)+t2(2,:)+t3(2,:));


figure 
plot(Xa,Ya,'r--','linewidth',1.2)
hold on
plot(X,Y,'g-.','linewidth',1.2)
grid on 
xlabel('x'),ylabel('y')
axis([0.5,2.5,0.5,2.5])
vline(1.5,':m')
hline(1.5,':m')
set(gca,'fontsize',13)
title('Actula versus Desired Trajectory')
legend('Actual sol2','Desired')


    