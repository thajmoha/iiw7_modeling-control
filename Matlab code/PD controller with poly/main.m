%%% HW7 PD control%%%
clear; clc; close all
%Initial conditions
tic
% integration
global u ode_indx dof ns
global KD KP 

ode_indx = 0;
dof = 7;
ns = dof*2;
KD =10*eye(dof);
KP = 100*eye(dof);


t0 = 0;
tfin = 5; % total simulation time
tspan = [t0 tfin]; %time span

x0 = zeros(2*dof,1);
x0(4) = pi/2;

[t, x] = ode45('fun_ode2',tspan,x0);
   

toc