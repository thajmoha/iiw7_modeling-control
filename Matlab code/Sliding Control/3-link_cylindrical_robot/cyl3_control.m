%%% Three-Link Cylindrical robot SMC Controller%%%
% x1=theta1; x2 = d2; x3 = d3; x4=theta1_dot; x5 = d2_dot; x6 = d3_dot;
clear; clc;close all

global t0 tfin traj_flag control_flag
global KP KD eta lambda eps
%trajectory and control flags/parameters
traj_flag = 2;
control_flag = 2;
KP = 30;
KD = 8;


eta = 1*ones(3,1);
eps = .01;
lambda = 100*ones(3,1);

ns = 6; %number of states (2 * No of DOF)
x0 = zeros(ns,1); %Initial conditions
% integration
t0 = 0; %starrt time
tfin = 5; % final time
tspan = [t0:.01:tfin]; %time span with reporting at every 0.01 s
[tt, xx] = ode45('cyl3_cont_der',tspan,x0);
for ii=1:length(tt)
    t = tt(ii);
    x = transpose(xx(ii,:));
    cyl3_data_traj_cont;
    uu(ii,:) = transpose(u);
    x_des(ii,:) = transpose(q_des);
    xdot_des(ii,:) = transpose(qdot_des);
end

x = xx;
t = tt;
u = uu;
plot_cyl3;
