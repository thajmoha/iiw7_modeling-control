%%% HW7 PD control%%%
% x1=th1; x2 = d; x3 = thdot; x4=ddot; 
clear; clc; close all
%Initial conditions
tic
% integration
global t0 tfin isample
t0 = 0;
tfin = 5; % total simulation time
tspan = [t0 tfin]; %time span

dof = 7;
x0 = zeros(2*dof,1);
x0(4) = pi/2;

x=[];
t=[];

load('desired_trajectory_joints.mat')
sample_timer = [100:100:1000];
for isample=1:length(time)-1
    tspan = [time(isample) time(isample+1)];
    [ut, vt] = ode45('fun_ode',tspan,x0);
    x= [x;vt];
    t=[t;ut];
    x0 = vt(end,:)';
    if find(sample_timer==isample)
        toc
    end
end  

% % plot positions
% figure(1);
% subplot(211);
% plot(t,x(:,1),'linewidth',1.2); grid;
% xlabel('time (sec)');
% ylabel('\theta (rad)');
% title(title_case)
% set(gca,'fontsize',11)
% ylim([0,1.5])

% hold on 
% plot(time,qt,'r')

% subplot(212);
% plot(t,x(:,2),'linewidth',1.2); grid;
% xlabel('time (sec)');
% ylabel('d (m)');
% set(gca,'fontsize',11)
% ylim([0,1.5])

% hold on 
% plot(time,qt,'r')


% plot velocities
% figure(2);
% subplot(211);
% plot(t,x(:,3),'linewidth',1.2); grid;
% xlabel('time (sec)');
% ylabel('$\dot{\theta}$ (rad/s)','interpreter','latex')
% title(title_case)
% 
% set(gca,'fontsize',11)
% % hold on 
% plot(time,qtdot,'r')

% 
% subplot(212);
% plot(t,x(:,4),'linewidth',1.2); grid;
% xlabel('time (sec)');
% ylabel('$\dot{d}$ (m/s)','interpreter','latex')
% set(gca,'fontsize',11)
% hold on 
% plot(time,qtdot,'r')


% % plot input
% figure(3);
% subplot(211);
% plot(u(1,:),'linewidth',1.2); grid;
% xlabel('time (sec)');
% ylabel('$\tau_1$','interpreter','latex')
% title(title_case)
% 
% set(gca,'fontsize',11)
% 
% subplot(212);
% plot(u(2,:),'linewidth',1.2); grid;
% xlabel('time (sec)');
% ylabel('$f_2$','interpreter','latex')
% set(gca,'fontsize',11)

toc