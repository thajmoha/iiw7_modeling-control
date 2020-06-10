%%% HW7 PD control%%%
clear; clc; close all
%Initial conditions
tic
% integration
global t0 tfin surface surface_dot M
t0 = 0;
tfin = 5; % total simulation time
tspan = [t0 tfin]; %time span

dof = 7;
x0 = zeros(2*dof,1);
x0(4) = pi/2;

% surface_dot = [];
% surface = [];
[t, x] = ode45('fun_ode',tspan,x0);
   

toc