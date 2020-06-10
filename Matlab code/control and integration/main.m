%%% HW6 simulation%%%
% x1=th1; x2 = d; x3 = thdot; x4=ddot; 
clear; clc;
%Initial conditions

% integration
tfin = 20; % total simulation time
tspan = [0 tfin]; %time span
global KD KP KI desired_joint 
desired_joint =1;
case_show = 4;


switch case_show
    case 1
        x0 = [0; 0; 0; 0];
        [t, x] = ode45('fun_ode_num',tspan,x0);
        title_case = 'Sinusoidal input';
    case 2
        x0 = [0; 0; 0; 0];
        KD = 500;
        KP = 2500;
        [t, x] = ode45('fun_ode',tspan,x0);
        title_case = 'PD controller';
    case 3 
        x0 = [0; 0; 0; 0; 0; 0];
        KD = 0;
        KP = 2500;
        KI = 500;
        [t, x] = ode45('integral_fun_ode',tspan,x0);
        title_case = 'PI controller';

    case 4
        x0 = [0; 0; 0; 0; 0; 0];
        KD = 500;
        KP = 2500;
        KI = 500;
        [t, x] = ode45('integral_fun_ode',tspan,x0);
        title_case = 'PID controller';
end
        

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