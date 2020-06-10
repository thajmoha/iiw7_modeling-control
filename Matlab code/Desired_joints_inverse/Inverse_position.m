% Initial guess assigning depending on the trajectory option
if traj_case ==1
theta0 = zeros(1,7);
theta0(1) = 20*pi/180;
theta0(4)=pi/2;
else 
theta0 = zeros(1,7);
theta0(4)=pi/2;
end

Theta = zeros(7,length(time));

for i=1:length(time)
    cost_value(:,i) = fcost4(theta0,X(i),Y(i),Z(i),n_t(:,i),o_t(:,i),a_t(:,i));
    option  = optimset('Algorithm','levenberg-marquardt');
    fun = @(theta) fcost4(theta,X(i),Y(i),Z(i),n_t(:,i),o_t(:,i),a_t(:,i));
    theta_new = fsolve(fun,theta0,option);
    theta0 = theta_new;
    Theta(:,i)=theta0;
end


toc
if plot_flag_joint ==1
plot_desired_joint
end
