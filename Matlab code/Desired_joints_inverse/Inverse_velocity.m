
Theta_dot = zeros(7,length(time));
Theta_ddot = zeros(7,length(time));
actual_vel = zeros(6,length(time));
actual_acc = zeros(6,length(time));



for i=1:length(time)
    % Velocities
    J = iwwa_J(Theta(:,i));
    desired_velocity = [Xdot(i);Ydot(i);Zdot(i);0;0;0];
%     Theta_dot(:,i) = pinv(J)*desired_velocity;
    pinvmat = transpose(J)*inv(J*transpose(J));
    Theta_dot(:,i) = pinvmat*desired_velocity;
    v_det(i) = det(J*transpose(J));
    % Acceleration
    desired_acc = [Xddot(i);Yddot(i);Zddot(i);0;0;0];
    Jdot = iwwa_Jdot(Theta(:,i),Theta_dot(:,i));
%     Theta_ddot(:,i) = pinv(J)*(desired_acc-Jdot*Theta_dot(:,i));
    Theta_ddot(:,i) = pinvmat*(desired_acc-Jdot*Theta_dot(:,i));
    actual_vel(:,i) = J*Theta_dot(:,i);
    actual_acc(:,i) = J*Theta_ddot(:,i) + Jdot *Theta_dot(:,i);
end


% using only Jv
% for i=1:length(time)
%     % Velocities
% %     J = iwwa_Jac(Theta(:,i));
% %     Jv = J(1:3,:);
%     Jv = iwwa_Jv(Theta(:,i));
%     desired_velocity = [Xdot(i);Ydot(i);Zdot(i)];
% %     Theta_dot(:,i) = pinv(Jv)*desired_velocity;
%     pinvmat = transpose(Jv)*inv(Jv*transpose(Jv));
%     Theta_dot(:,i) = pinvmat*desired_velocity;
% 
%     % Acceleration
%     desired_acc = [Xddot(i);Yddot(i);Zddot(i)];
%     Jvdot = iwwa_Jvdot(Theta(:,i),Theta_dot(:,i));
% %     Theta_ddot(:,i) = pinv(Jv)*(desired_acc-Jvdot*Theta_dot(:,i));
%     Theta_ddot(:,i) = pinvmat*(desired_acc-Jvdot*Theta_dot(:,i));
% 
%     actual_vel(:,i) = Jv*Theta_dot(:,i);
%     actual_acc(:,i) = Jv*Theta_ddot(:,i) + Jvdot *Theta_dot(:,i);
% end

plot_desired_veolocity