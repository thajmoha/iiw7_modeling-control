%%% HW7 PD control%%%
clear; clc; close all
%Initial conditions
tic
%
global fname ifig save_flag
folder_name = 'Figures_test5'
fname1 = 'C:\Users\Turki\Dropbox (VCADS)\1SCH\Spring 2018\Robatics\Project term\iiwa 7\Matlab code\Sliding Control\iiwa real trajectory with poly coef - Copy\';
fname = strcat(fname1,folder_name);
ifig = 0;
save_flag = 1;

% integration
clear global u ode_indx eta eps lambda ts tt
global u ode_indx eta eps lambda  tt iper tf
iper =1;
ode_indx = 0;
eta = 10;
eps = 5;
lambda = 1.5 ;



% t0 = 0;
% tfin = 5; % total simulation time
% tspan = [t0 tfin]; %time span

dof = 7;
load('desired_trajectory_joints3.mat')
tf = time(end);
x0(1:dof) = Theta(:,1);
x0(dof+1:2*dof) = Theta_dot(:,1);


[t, x] = ode45('fun_ode2',time,x0);
   

toc
plot_results
plot_input
Forward_solution