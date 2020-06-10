%% Kinematic Simulation of iiwa 7 R800
desired_path3
% load('Theta_star.mat')
% load('feed_results_net2.mat')
%% Loading DH table  
DH_table
%% Defining Links 
for ilink =1:7
    L(ilink) = Link(DH_iiwa7(ilink,:));
end

Rob =  SerialLink(L); % creating the robot

Rob.name = 'iiwa 7 R800'; % to add name

%% Animation 
% for j=1:length(phi)
k=0;
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';
    for j=1:10:length(phi)
        k=k+1;
    joints_angles = Theta_star(:,j); 
    Rob.plot(joints_angles')
    hold on 
    axp = plot3(pxd(j),pyd(j),pzd(j),'xr')
    axis([-1 1 -1 1 -1 1])
    pause(0.25)


    videoM(k) = getframe(gcf);    
end
% % endo effector 
% T = Rob.fkine([1 1 1 0 0 0 0])
% qi = Rob.ikine(T)
% 
% Ts = Rob.fkine(qi)