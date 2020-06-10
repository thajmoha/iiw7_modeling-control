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
num_points = 2000;  % number of training samples

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
plot(px,py,'kx')
hold on
scale = 0.25;
% quiver(px,py,scale*cos(ThE),scale*sin(ThE),'r','AutoScale','off')
grid on
xlabel('x_E'),ylabel('y_E')

figure(2)
plot(py,pz,'kx')
hold on
scale = 0.25;
% quiver(px,py,scale*cos(ThE),scale*sin(ThE),'r','AutoScale','off')
grid on
xlabel('y_E'),ylabel('z_E')

input = [px;py;pz;nx;ny;nz;ox;oy;oz;ax;ay;az];
target = [th1,th2,th3,th4,th5,th6,th7]';

 
% Create a Fitting Network
hiddenLayerSize = 100;
net = fitnet(hiddenLayerSize,'trainlm');
% net = fitnet(hiddenLayerSize,'trainbr');


% Set up Division of Data for Training, Validation, Testing
net.divideParam.trainRatio = 70/100;
net.divideParam.valRatio = 15/100;
net.divideParam.testRatio = 15/100;
 
% Train the Network
[net,tr] = train(net,input,target);
 
% Test the Network
output = net(input);
errors = gsubtract(output,target);
performance = perform(net,target,output)
 
% View the Network
view(net)
 
% Plots
% Uncomment these lines to enable various plots.
figure, plotperform(tr)
% figure, plottrainstate(tr)
% figure, plotregression(target,output)
% figure, ploterrhist(errors)