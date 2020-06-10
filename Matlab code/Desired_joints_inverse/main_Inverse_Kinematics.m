%% Solving the Inverse Kinematic problem for iiwa 7 arm manipulator
% Turki Haj Mohamad 
% Villanova University
% 5/8/2018

%% cleaning 
clear
clc
close all
tic
%% Desired path
plot_flag_cartesian = 1; %plot desired trajectory flag
plot_flag_joint = 1; %plot joint variables 
traj_case =1; % selecting the desired trajectory, two options 
folder_name = 'Figure_test'
fname1 = 'C:\Users\Admin\Dropbox (VCADS)\1SCH\Spring 2018\Robatics\Project term\iiwa 7\Matlab code\Desired_joints_inverse\';
fname = strcat(fname1,folder_name);
ifig = 0;
%% Desired Trajectory 
Desired_creator; 
%% Inverse Kinematics using Fsolve
Inverse_position 

%% Inverse solution --> Forward solution 
Forward_solution;

%% Inverse velocity and acceleration
Inverse_velocity;