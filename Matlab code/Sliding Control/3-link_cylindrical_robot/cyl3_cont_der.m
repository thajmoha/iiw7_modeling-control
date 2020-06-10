% Three-Link Cylindrical robot derivative equations
% x = [theta1; d2; d3; theta1_dot; d2_dot; d3_dot];
% xder = x_dot = [theta1_dot; d2_dot; d3_dot; theta1_ddot; d2_ddot; d3_ddot];
function xder = cyl3_cont_der(t,x)
global t0 tfin traj_flag control_flag
global KP KD eta lambda eps

%define data, trajectory, and control
cyl3_data_traj_cont;

% Actuator forces/torques
xdd = M\(-c-phi-B.*x(n+1:ns)+u); %accelerations
xder = [x(n+1:ns); xdd]; %state time derivatives
