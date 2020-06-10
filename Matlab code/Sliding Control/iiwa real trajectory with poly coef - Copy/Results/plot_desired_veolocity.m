
actual_vel = zeros(6,length(time));



for i=1:length(time)
    % Velocities
    J = iwwa_J(x(i,1:7));
    actual_vel(:,i) = J*x(i,8:14)';
end



figure
plot(time(disp_v),Xdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(1,disp_v),'--*','linewidth',1.2)
grid on 
hl = legend('$\dot{x}_{d}$','$\dot{x}_{a}$');
set(hl, 'Interpreter', 'latex');
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Ydot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(2,disp_v),'--*','linewidth',1.2)
grid on 
hl = legend('$\dot{y}_{d}$','$\dot{y}_{a}$');
set(hl, 'Interpreter', 'latex');
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Zdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(3,disp_v),'--*','linewidth',1.2)
grid on 
hl = legend('$\dot{z}_{d}$','$\dot{z}_{a}$');
set(hl, 'Interpreter', 'latex');
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');

