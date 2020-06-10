%% iiwa 7
% Turki Haj Mohamad
% 4/19/2018

%% cleaning
clc
close all
clear
%% parameters
DH_table
%% random generation
num_points = 20000;  % number of training samples

% range of joint variables
Joints_limit = [-170,170;
                -120,120;
                -170,170;
                -120,120;
                -170,170;
                -120,120;
                -175,175]*pi/180;

% generate thetas
th1 = q_rnd_gen(Joints_limit(1,:),num_points);
th2 = q_rnd_gen(Joints_limit(2,:),num_points);
th3 = q_rnd_gen(Joints_limit(3,:),num_points);
th4 = q_rnd_gen(Joints_limit(4,:),num_points);
th5 = q_rnd_gen(Joints_limit(5,:),num_points);
th6 = q_rnd_gen(Joints_limit(6,:),num_points);
th7 = q_rnd_gen(Joints_limit(7,:),num_points);

%% Forward solution 

% define ff_fun -->

%% End effector 
for i=1:num_points
     v = [th1(i),th2(i),th3(i),th4(i),th5(i),th6(i),th7(i)];
    [px(i),py(i),pz(i),nx(i),ny(i),nz(i),ox(i),oy(i),oz(i),ax(i),ay(i),az(i)] = ff_fun(v);
end


figure(1)
plot3(px,py,pz,'kx')

desired_path3

hold on 
plot3(xd,yd,zd,'or')