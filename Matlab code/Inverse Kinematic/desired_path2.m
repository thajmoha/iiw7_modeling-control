%% Desired trajectory
phi = [0:.01:.01];
xc = 0.4;
yc = 0;
zc = 0.5;
r  = 0.3;

xd = xc*ones(1,length(phi));
yd = yc + r*cos(phi);
zd = zc + r*sin(phi);
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
