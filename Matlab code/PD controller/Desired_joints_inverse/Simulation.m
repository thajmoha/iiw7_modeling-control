%% Kinematic Simulation of iiwa 7 R800

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

k=0;
axis tight manual
ax = gca;
ax.NextPlot = 'replaceChildren';
for j=1:50:length(time)
        k=k+1;
    joints_angles = Theta(:,j); 
    Rob.plot(joints_angles')
    hold on 
    axp = plot3(pxd(j),pyd(j),pzd(j),'xr')
    axis([-1 1 -1 1 -1 1])
    pause(0.25)
    videoM(k) = getframe(gcf);    
end
