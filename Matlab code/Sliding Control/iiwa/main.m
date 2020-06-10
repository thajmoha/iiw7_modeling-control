%%% HW7 PD control%%%
% x1=th1; x2 = d; x3 = thdot; x4=ddot; 
clear; clc;
%Initial conditions
tic
% integration
global t0 tfin
t0 = 0;
tfin = 5; % total simulation time
tspan = [t0 tfin]; %time span


dof = 7;
x0 = zeros(2*dof,1);

[t, x] = ode45('fun_ode',tspan,x0);
title_case = 'Sliding controller';
   

% plot positions
figure(1);
subplot(211);
plot(t,x(:,1),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('\theta (rad)');
title(title_case)
set(gca,'fontsize',11)
ylim([0,1.5])

subplot(212);
plot(t,x(:,2),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('d (m)');
set(gca,'fontsize',11)
ylim([0,1.5])

% plot velocities
figure(2);
subplot(211);
plot(t,x(:,3),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('$\dot{\theta}$ (rad/s)','interpreter','latex')
title(title_case)

set(gca,'fontsize',11)

subplot(212);
plot(t,x(:,4),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('$\dot{d}$ (m/s)','interpreter','latex')
set(gca,'fontsize',11)

toc