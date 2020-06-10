%% Desired trajectory
phi = [0:.1:2*pi];
xc = 0;
yc = 0;
zc = 0;
r  = 0.2;

xd = xc + r*cos(phi);
yd = yc + r*sin(phi);
zd = 0*ones(1,length(phi));
%% Desired orientation
nx = 1*ones(1,length(phi));
ny = 0*ones(1,length(phi));
nz = 0*ones(1,length(phi));

ox = 0*ones(1,length(phi));
oy = 1*ones(1,length(phi));
oz = 0*ones(1,length(phi));

ax = 0*ones(1,length(phi));
ay = 0*ones(1,length(phi));
az = 1*ones(1,length(phi));
