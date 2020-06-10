%% Kinematic Simulation of iiwa 7 R800

pxd = zeros(1,length(time));
pyd = pxd;
pzd = pxd;

n_r = zeros(3,length(time));

o_r = n_r;

a_r = n_r;

for i=1:length(time)
     v = x(i,1:7);
    [pxd(i),pyd(i),pzd(i),n_r(:,i),o_r(:,i),a_r(:,i)] = ff_fun(v);
end
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


v = VideoWriter('sim_robot.avi');
open(v);
for j=1:10:length(time)
        k=k+1;
    joints_angles = x(j,1:7); 
    Rob.plot(joints_angles)
    hold on 
    axp = plot3(pxd(j),pyd(j),pzd(j),'xr')
    axis([-1 1 -1 1 -1 1])
    pause(0.25)
    videoM(k) = getframe(gcf);    
    writeVideo(v,videoM(k));
end
