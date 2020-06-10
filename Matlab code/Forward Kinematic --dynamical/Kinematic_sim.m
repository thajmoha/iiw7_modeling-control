%% Kinematic Simulation of iiwa 7 R800
clear
clc
%% Loading DH table  
DH_table
%% Defining Links 
for ilink =1:7
    L(ilink) = Link(DH_iiwa7(ilink,:));
end

Rob =  SerialLink(L); % creating the robot

Rob.name = 'iiwa 7 R800'; % to add name
%% Results 
Rob % to show the DH matrix
q1 = pi/8; q2 = pi/6; q3 = pi/2; q4 =pi/3; q5 = pi/6; q6 =pi/10; q7=pi/6;
Rob.plot([q1 q2 q3 q4 q5 q6 q7]) % to plot but you should detrmine the variables

%% Animation 
for t1 =0:0.05:pi
    Rob.plot([t1 t1+pi/10 t1-pi/12 0 t1 -t1 0])
    pause(0.25)
end
% endo effector 
T = Rob.fkine([1 1 1 0 0 0 0])
qi = Rob.ikine(T)

Ts = Rob.fkine(qi)