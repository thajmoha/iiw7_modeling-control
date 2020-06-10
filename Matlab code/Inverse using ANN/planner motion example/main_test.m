%% Three-link Planner
% Turki Haj Mohamad
% 4/18/2018

%% cleaning
clc
close all
clear
%% parameters
L1 = 2;
L2 = 2;
L3 = 2;
%% random generation
num_points = 2000;  % number of training samples

% range of joint variables
th1_limit = [0,pi]; 
th2_limit = [-pi,0];
th3_limit = [-pi/2,pi/2];

% generate thetas
th1 = q_rnd_gen(th1_limit,num_points);
th2 = q_rnd_gen(th2_limit,num_points);
th3 = q_rnd_gen(th3_limit,num_points);

%% Forward solution 

% define ff_fun -->

%% End effector 
for i=1:num_points
     v = [th1(i),th2(i),th3(i)];
    [px(i),py(i),ThE(i)] = ff_fun(v);
end

%% workspace visiulization
figure(1)
plot(px,py,'kx')
hold on
scale = 0.25;
quiver(px,py,scale*cos(ThE),scale*sin(ThE),'r','AutoScale','off')
grid on
xlabel('x_E'),ylabel('y_E')

input = [px',py',ThE']';
target = [th1,th2,th3]';

 
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