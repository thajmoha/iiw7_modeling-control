clear all; close all; clc
global eta lambda eps
global index ts u
index = 1;

eta = 3;
eps = 0.1;
lambda = 1.5;

ts = 0.01;
ns = 12; %number of states (2 * No of DOF)

% th1 = pi/2; th2 = 0; th3 = pi/2; th4 = 0; th5 = 0; th6 = -pi/2; 

load('desired_theta.mat')

x0 = [    theta_des(1,1)     theta_des(2,1)     theta_des(3,1)     theta_des(4,1)     theta_des(5,1)      theta_des(6,1) ...
      theta_des_dot(1,1) theta_des_dot(2,1) theta_des_dot(3,1) theta_des_dot(4,1) theta_des_dot(5,1) theta_des_dot(6,1)]; %Initial conditions
load('time_span.mat')
u = zeros(6,length(time_span));

[tt, xx] = ode45('robot_der',time_span,x0);

