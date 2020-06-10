close all
clear 
clc
%%
load('results8.mat')
load('desired_trajectory_joints.mat');

%% plots 
eta
lambda 
eps

figure
plot(time,Theta(1,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,1)*180/pi,'--b','linewidth',1.2)
plot(time,Theta(2,:)*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,2)*180/pi,'--r','linewidth',1.2)
legend('\theta_1^d','\theta_1','\theta_2^d','\theta_2')

figure
plot(time,Theta(3,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,3)*180/pi,'--b','linewidth',1.2)
plot(time,Theta(4,:)*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,4)*180/pi,'--r','linewidth',1.2)
legend('\theta_3^d','\theta_3','\theta_4^d','\theta_4')



figure
plot(time,Theta(5,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,5)*180/pi,'--b','linewidth',1.2)
plot(time,Theta(6,:)*180/pi,'r','linewidth',1.2)
hold on 
plot(t,x(:,6)*180/pi,'--r','linewidth',1.2)
plot(time,Theta(7,:)*180/pi,'k','linewidth',1.2)
plot(t,x(:,7)*180/pi,'--k','linewidth',1.2)
grid on 
legend('\theta_5^d','\theta_5','\theta_6^d','\theta_6','\theta_7^d','\theta_7')



% velocity

figure
plot(time,Theta_dot(1,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,8),'--b','linewidth',1.2)
plot(time,Theta_dot(2,:),'r','linewidth',1.2)
plot(t,x(:,9),'--r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{1}$','$\dot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');


figure
plot(time,Theta_dot(3,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,10),'--b','linewidth',1.2)
plot(time,Theta_dot(4,:),'r','linewidth',1.2)
plot(t,x(:,11),'--r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{3}$','$\dot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');


figure
plot(time,Theta_dot(5,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,12),'--b','linewidth',1.2)
plot(time,Theta_dot(6,:),'r','linewidth',1.2)
hold on 
plot(t,x(:,13),'--r','linewidth',1.2)
plot(time,Theta_dot(7,:),'k','linewidth',1.2)
plot(t,x(:,14),'--k','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{5}$','$\dot{\theta}_{6}$','$\dot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');

