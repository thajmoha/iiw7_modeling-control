%% Trajectory planning
% Turki Haj Mohamad 
% Villanova University 
% 5/8/2018
%% Initiating
global r xc yc zc a
DH_table
%% Trajectory specs
traj_case = 1;
plot_flag_cartesian = 1;
num_points = 1000;
t0 = 0; % start time 
tf = 5; % final time
%% Trajectory options
if traj_case ==1
    r = (L3+L4)*sin(20*pi/180); % radius
    xc = (L3+L4)*cos(20*pi/180); % strat point X
    yc = 0;
    zc = L1+L2;
else
    r = 0.2;
    xc = (L3+L4); % strat point X
    yc = -r;
    zc = L1+L2;
end
%% Boundary Condition problem
% this equations to describe a circle, describing x and y using alpha
alpha_0 = 0; % initial angle
alpha_f = 2*pi; %final angle

alpha_dot0 = 0; % initial velocity
alpha_dotf = 0; %final velocity

alpha_ddot0 = 0; % initial acc.
alpha_ddotf = 0; %final acc.

a=coeff_poly5(t0,tf,alpha_0,alpha_f,alpha_dot0,alpha_dotf,alpha_ddot0,alpha_ddotf);
%% Desired end effector x,y,z and orientation
time = linspace(t0,tf,num_points);
disp_v = [1:20:length(time)];
% position 
X = xdes(time);
Xdot = xdes_dot(time);
Xddot = xdes_ddot(time);

Y =  ydes(a,time);
Ydot = ydes_dot(a,time);
Yddot = ydes_ddot(a,time);

Z =  zdes(a,time);
Zdot = zdes_dot(a,time);
Zddot = zdes_ddot(a,time);


% orientation
nx = 0*ones(1,length(time));
ny = 0*ones(1,length(time));
nz = -1*ones(1,length(time));

ox = 1*ones(1,length(time));
oy = 0*ones(1,length(time));
oz = 0*ones(1,length(time));

ax = 0*ones(1,length(time));
ay = -1*ones(1,length(time));
az = 0*ones(1,length(time));

n_t = [nx;ny;nz];
o_t = [ox;oy;oz];
a_t = [ax;ay;az];

%% plotting and visulization 
if plot_flag_cartesian == 1;
plot_desired
end