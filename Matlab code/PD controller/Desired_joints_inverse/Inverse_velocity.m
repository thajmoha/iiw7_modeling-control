
Theta_dot = zeros(7,length(time));
Theta_ddot = zeros(7,length(time));
actual_vel = zeros(3,length(time));
actual_acc = zeros(3,length(time));
for i=1:length(time)
    % Velocities
%     J = iwwa_Jac(Theta(:,i));
%     Jv = J(1:3,:);
    Jv = iwwa_Jv(Theta(:,i));
    desired_velocity = [Xdot(i);Ydot(i);Zdot(i)];
    Theta_dot(:,i) = pinv(Jv)*desired_velocity;
    % Acceleration
    desired_acc = [Xddot(i);Yddot(i);Zddot(i)];
    Jvdot = iwwa_Jvdot(Theta(:,i),Theta_dot(:,i));
    Theta_ddot(:,i) = pinv(Jv)*(desired_acc-Jvdot*Theta_dot(:,i));
    actual_vel(:,i) = Jv*Theta_dot(:,i);
    actual_acc(:,i) = Jv*Theta_ddot(:,i) + Jvdot *Theta_dot(:,i);
end


figure
plot(time,Theta_dot(1,:),'b','linewidth',1.2)
hold on 
plot(time,Theta_dot(2,:),'r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{1}$','$\dot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');


figure
plot(time,Theta_dot(3,:),'b','linewidth',1.2)
hold on 
plot(time,Theta_dot(4,:),'r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{3}$','$\dot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');


figure
plot(time,Theta_dot(5,:),'b','linewidth',1.2)
hold on 
plot(time,Theta_dot(6,:),'r','linewidth',1.2)
hold on 
plot(time,Theta_dot(7,:),'k','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{5}$','$\dot{\theta}_{6}$','$\dot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');



figure
plot(time,Theta_ddot(1,:),'b','linewidth',1.2)
hold on 
plot(time,Theta_ddot(2,:),'r','linewidth',1.2)
grid on 
hl = legend('$\ddot{\theta}_{1}$','$\ddot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');


figure
plot(time,Theta_ddot(3,:),'b','linewidth',1.2)
hold on 
plot(time,Theta_ddot(4,:),'r','linewidth',1.2)
grid on 
hl = legend('$\ddot{\theta}_{3}$','$\ddot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');


figure
plot(time,Theta_ddot(5,:),'b','linewidth',1.2)
hold on 
plot(time,Theta_ddot(6,:),'r','linewidth',1.2)
hold on 
plot(time,Theta_ddot(7,:),'k','linewidth',1.2)
grid on 
hl = legend('$\ddot{\theta}_{5}$','$\ddot{\theta}_{6}$','$\ddot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');



figure
plot(time(disp_v),Xdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(1,disp_v),'--*','linewidth',1.2)
title('Xdot')

figure
plot(time(disp_v),Ydot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(2,disp_v),'--*','linewidth',1.2)
title('Ydot')

figure
plot(time(disp_v),Zdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(3,disp_v),'--*','linewidth',1.2)
title('Zdot')


figure
plot(time(disp_v),Xddot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_acc(1,disp_v),'--*','linewidth',1.2)
title('Xddot')

figure
plot(time(disp_v),Yddot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_acc(2,disp_v),'--*','linewidth',1.2)
title('Yddot')

figure
plot(time(disp_v),Zddot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_acc(3,disp_v),'--*','linewidth',1.2)
title('Zddot')

