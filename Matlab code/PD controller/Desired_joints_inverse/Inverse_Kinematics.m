%% Trajectory Planning 

%% cleaning 
clear
clc
close all
tic
%% Desired path
plot_flag_cartesian = 0;
plot_flag_joint = 1;
Desired_creator 
disp_v =[1:20:length(time)];
%% 
DH_table

% Initial guess
theta0 = zeros(1,7);
theta0(4)=pi/2;

Theta = zeros(7,length(time));

% Inverse Kinematics using Fsolve
for i=1:length(time)
    option  = optimset('Algorithm','levenberg-marquardt');
    fun = @(theta) fcost4(theta,X(i),Y(i),Z(i),n_t(:,i),o_t(:,i),a_t(:,i));
    theta_new = fsolve(fun,theta0,option);
    theta0 = theta_new;
    Theta(:,i)=theta0;
end

toc
if plot_flag_joint ==1
plot_desired_joint
end


Inv_Forward;


Inverse_velocity;