%% Desired trajectory
DH_table
phi = [0:.01:2*pi];
r  = 0.2;
xc = (L3+L4);
yc = 0;
zc = L1+L2;


xd = xc*ones(1,length(phi));
yd = yc + r*cos(phi);
zd = zc + r*sin(phi);
figure
plot(yd,zd)

% figure
% for i=1:length(xd)
% plot3(xd(i),yd(i),zd(i),'xr')
% hold on
% pause(0.1)
% end
% xlabel('xd'),ylabel('yd'),zlabel('zd')
%% Desired orientation
nx = 0*ones(1,length(phi));
ny = 0*ones(1,length(phi));
nz = -1*ones(1,length(phi));
n_t = [nx;ny;nz];

ox = 1*ones(1,length(phi));
oy = 0*ones(1,length(phi));
oz = 0*ones(1,length(phi));
o_t = [ox;oy;oz];

ax = 0*ones(1,length(phi));
ay = -1*ones(1,length(phi));
az = 0*ones(1,length(phi));
a_t = [ax;ay;az];
