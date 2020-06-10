%%% HW7 PD control%%%
clear; clc; close all
%Initial conditions
tic
% integration
global u ode_indx eta eps lambda
ode_indx = 0;
eta = 3;
eps = 0.1;
lambda = 1.5;



t0 = 0;
tfin = 1; % total simulation time
tspan = [t0 tfin]; %time span

dof = 7;
x0 = zeros(2*dof,1);
x0(4) = 0;

surface_dot = [];
surface = [];
[t, x] = ode45('fun_ode',tspan,x0);
   

toc