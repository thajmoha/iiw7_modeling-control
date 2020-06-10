%%% HW6 simulation%%%
% x1=th1; x2 = d; x3 = thdot; x4=ddot; 
clear; clc;
%Initial conditions

x0 = zeros(21,1);
% load('x_mat.mat')
% x0 = x(end,:)';
% clear x;
% x0(4) = pi/2;
% integration
tfin = 10; % total simulation time
tspan = [0 tfin]; %time span

% global_param;
% Inertia_parameters;
% param;
% clear Ixx Iyy Izz Ixy Iyz Izx m 


global KD KP KI desired_joint 
desired_joint =1;

KD = 50;
KP = 250;
KI = 4;

% KD = 500;
% KP = 2500;
% KI = 4000;

tic
[t, x] = ode45('integral_fun_ode',tspan,x0);

% plot positions
figure(1);
subplot(211);
plot(t,x(:,1),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('\theta (rad)');
set(gca,'fontsize',11)
subplot(212);
plot(t,x(:,2),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('d (m)');
set(gca,'fontsize',11)

% plot velocities
figure(2);
subplot(211);
plot(t,x(:,3),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('$\dot{\theta}$ (rad/s)','interpreter','latex')
set(gca,'fontsize',11)
subplot(212);
plot(t,x(:,4),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('$\dot{d}$ (m/s)','interpreter','latex')
set(gca,'fontsize',11)
toc