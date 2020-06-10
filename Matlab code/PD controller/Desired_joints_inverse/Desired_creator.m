%% Trajectory planning
global r xc yc zc a
%% Initiating
DH_table
% Trajectory specs
num_points = 1000;

r = 0.2; % radius
% X0 = sym(0); % strat point X
% Y0 = sym(0); % start point Y
xc = (L3+L4); % strat point X
yc = -r;
zc = L1+L2;

% Boundary Condition problem
alpha_0 = 0; % initial angle
alpha_f = 2*pi; %final angle

alpha_dot0 = 0; % initial velocity
alpha_dotf = 0; %final velocity

alpha_ddot0 = 0; % initial acc.
alpha_ddotf = 0; %final acc.

t0 = 0; % start time 
tf = 5; % final time

a=coeff_poly5(t0,tf,alpha_0,alpha_f,alpha_dot0,alpha_dotf,alpha_ddot0,alpha_ddotf);



time = linspace(t0,tf,num_points);


X = xdes(time);
Xdot = xdes_dot(time);
Xddot = xdes_ddot(time);

Y =  ydes(a,time);
Ydot = ydes_dot(a,time);
Yddot = ydes_ddot(a,time);

Z =  zdes(a,time);
Zdot = zdes_dot(a,time);
Zddot = zdes_ddot(a,time);


 
nx = 0*ones(1,length(time));
ny = 0*ones(1,length(time));
nz = -1*ones(1,length(time));

ox = 1*ones(1,length(time));
oy = 0*ones(1,length(time));
oz =0*ones(1,length(time));

ax = 0*ones(1,length(time));
ay = -1*ones(1,length(time));
az = 0*ones(1,length(time));


n_t = [nx;ny;nz];
o_t = [ox;oy;oz];
a_t = [ax;ay;az];

dydt = diff(Y(:))./diff(time(:));

if plot_flag_cartesian == 1;
plot_desired
end