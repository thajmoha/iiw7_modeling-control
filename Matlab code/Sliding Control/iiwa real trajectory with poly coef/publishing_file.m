close all
clear 
clc
%%
load('results5.mat')
%%
load('desired_trajectory_joints.mat');
load('poly_coef.mat')
Theta = zeros(7,length(t));
Theta_dot = zeros(7,length(t));
Theta_ddot = zeros(7,length(t));
for j=1:length(t)
    for i=1:7
    Theta(i,j) =polyval(Q_theta(i,:),t(j)) ;
    Theta_dot(i,j) =polyval(Q_theta_dot(i,:),t(j)) ;
    Theta_ddot(i,j) =polyval(Q_theta_ddot(i,:),t(j)) ;
    end
end
eta 
lambda 
eps

figure
plot(t,Theta(1,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,1)*180/pi,'--b','linewidth',1.2)
plot(t,Theta(2,:)*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,2)*180/pi,'--r','linewidth',1.2)
legend('\theta_1^d','\theta_1','\theta_2^d','\theta_2')

figure
plot(t,Theta(3,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,3)*180/pi,'--b','linewidth',1.2)
plot(t,Theta(4,:)*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,4)*180/pi,'--r','linewidth',1.2)
legend('\theta_3^d','\theta_3','\theta_4^d','\theta_4')



figure
plot(t,Theta(5,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,5)*180/pi,'--b','linewidth',1.2)
plot(t,Theta(6,:)*180/pi,'r','linewidth',1.2)
hold on 
plot(t,x(:,6)*180/pi,'--r','linewidth',1.2)
plot(t,Theta(7,:)*180/pi,'k','linewidth',1.2)
plot(t,x(:,7)*180/pi,'--k','linewidth',1.2)
grid on 
legend('\theta_5^d','\theta_5','\theta_6^d','\theta_6','\theta_7^d','\theta_7')



% velocity

figure
plot(t,Theta_dot(1,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,8),'--b','linewidth',1.2)
plot(t,Theta_dot(2,:),'r','linewidth',1.2)
plot(t,x(:,9),'--r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{1}$','$\dot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');


figure
plot(t,Theta_dot(3,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,10),'--b','linewidth',1.2)
plot(t,Theta_dot(4,:),'r','linewidth',1.2)
plot(t,x(:,11),'--r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{3}$','$\dot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');


figure
plot(t,Theta_dot(5,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,12),'--b','linewidth',1.2)
plot(t,Theta_dot(6,:),'r','linewidth',1.2)
hold on 
plot(t,x(:,13),'--r','linewidth',1.2)
plot(t,Theta_dot(7,:),'k','linewidth',1.2)
plot(t,x(:,14),'--k','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{5}$','$\dot{\theta}_{6}$','$\dot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');

