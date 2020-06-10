%%% iiwa PD control%%%
% x1=th1; x2 = d; x3 = thdot; x4=ddot; 
clear; clc; close all
%Initial conditions
tic
% integration
global KD KP i
desired_path

x0 = zeros(14,1);

KD =100*eye(7);
KP = 120*eye(7);

x=[];
t=[];
toc
for i=1:length(time)-1    
    tspan = [time(i) time(i+1)];
[u, v] = ode45('fun_ode2',tspan,x0);
x0 = v(end,:)';
x= [x;v];
t=[t;u];
end
toc



title_case = 'PD controller';    

% plot positions
figure(1);
subplot(211);
plot(t,x(:,1),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('\theta (rad)');
title(title_case)
set(gca,'fontsize',11)
ylim([0,1.5])

hold on 
plot(time,qt,'r')

subplot(212);
plot(t,x(:,2),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('d (m)');
set(gca,'fontsize',11)
ylim([0,1.5])

hold on 
plot(time,qt,'r')


% plot velocities
figure(2);
subplot(211);
plot(t,x(:,3),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('$\dot{\theta}$ (rad/s)','interpreter','latex')
title(title_case)

set(gca,'fontsize',11)
hold on 
plot(time,qtdot,'r')


subplot(212);
plot(t,x(:,4),'linewidth',1.2); grid;
xlabel('time (sec)');
ylabel('$\dot{d}$ (m/s)','interpreter','latex')
set(gca,'fontsize',11)
hold on 
plot(time,qtdot,'r')
