
figure
plot(time,Theta_dot(1,:),'.b','linewidth',1.2)
hold on 
plot(time,Theta_dot(2,:),'.r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{1}$','$\dot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time,Theta_dot(3,:),'.b','linewidth',1.2)
hold on 
plot(time,Theta_dot(4,:),'.r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{3}$','$\dot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time,Theta_dot(5,:),'.b','linewidth',1.2)
hold on 
plot(time,Theta_dot(6,:),'.r','linewidth',1.2)
hold on 
plot(time,Theta_dot(7,:),'.k','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{5}$','$\dot{\theta}_{6}$','$\dot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time,Theta_ddot(1,:),'.b','linewidth',1.2)
hold on 
plot(time,Theta_ddot(2,:),'.r','linewidth',1.2)
grid on 
hl = legend('$\ddot{\theta}_{1}$','$\ddot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time,Theta_ddot(3,:),'.b','linewidth',1.2)
hold on 
plot(time,Theta_ddot(4,:),'.r','linewidth',1.2)
grid on 
hl = legend('$\ddot{\theta}_{3}$','$\ddot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time,Theta_ddot(5,:),'.b','linewidth',1.2)
hold on 
plot(time,Theta_ddot(6,:),'.r','linewidth',1.2)
hold on 
plot(time,Theta_ddot(7,:),'.k','linewidth',1.2)
grid on 
hl = legend('$\ddot{\theta}_{5}$','$\ddot{\theta}_{6}$','$\ddot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time(disp_v),Xdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(1,disp_v),'--*','linewidth',1.2)
grid on 
hl = legend('$\dot{x}_{d}$','$\dot{x}_{a}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Ydot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(2,disp_v),'--*','linewidth',1.2)
grid on 
hl = legend('$\dot{y}_{d}$','$\dot{y}_{a}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Zdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_vel(3,disp_v),'--*','linewidth',1.2)
grid on 
hl = legend('$\dot{z}_{d}$','$\dot{z}_{a}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Xddot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_acc(1,disp_v),'--*','linewidth',1.2)
grid on
hl = legend('$\ddot{x}_{d}$','$\ddot{x}_{a}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Yddot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_acc(2,disp_v),'--*','linewidth',1.2)
grid on
hl = legend('$\ddot{y}_{d}$','$\ddot{y}_{a}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Zddot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),actual_acc(3,disp_v),'--*','linewidth',1.2)
grid on
hl = legend('$\ddot{z}_{d}$','$\ddot{z}_{a}$');
set(hl, 'Interpreter', 'latex');
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');