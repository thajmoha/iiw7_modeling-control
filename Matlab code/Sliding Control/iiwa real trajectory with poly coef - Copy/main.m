%%% HW7 PD control%%%
clear; clc; close all
%Initial conditions
tic
% integration
clear global u ode_indx eta eps lambda ts tt
global u ode_indx eta eps lambda ts tt
ode_indx = 1;
eta = 3;
eps = 0.7;
lambda = 1.5 ;
ts = 0.005;


% t0 = 0;
% tfin = 5; % total simulation time
% tspan = [t0 tfin]; %time span

dof = 7;
load('desired_trajectory_joints3.mat')
x0(1:dof) = Theta(:,1);
x0(dof+1:2*dof) = Theta_dot(:,1);


[t, x] = ode45('fun_ode',time,x0);
   

toc