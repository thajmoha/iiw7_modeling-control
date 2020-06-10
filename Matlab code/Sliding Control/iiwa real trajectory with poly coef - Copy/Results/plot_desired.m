

figure
plot3(X,Y,Z,'-k','linewidth',1.2)
xlabel('x_d'),ylabel('y_d'),zlabel('z_d')
grid on 
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');


figure
plot(Y,Z,'-k','linewidth',1.2)
xlabel('y_d'),ylabel('z_d')
grid on 
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time(disp_v),X(disp_v),'-','linewidth',1.2)
hold on
plot(time(disp_v),Xdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Xddot(disp_v),'--*','linewidth',1.2)
legend('position','velocity','acceleration')
xlabel('Time')
title('x_d')
grid on
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');

figure
plot(time(disp_v),Y(disp_v),'linewidth',1.2)
hold on
plot(time(disp_v),Ydot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Yddot(disp_v),'--*','linewidth',1.2)
legend('position','velocity','acceleration')
xlabel('Time')
title('y_d')
grid on
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time(disp_v),Z(disp_v),'linewidth',1.2)
hold on
plot(time(disp_v),Zdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Zddot(disp_v),'--*','linewidth',1.2)
legend('position','velocity','acceleration')
xlabel('Time')
title('z_{d}')
grid on
% ifig = ifig+1;
% filename = strcat('fig',num2str(ifig));
% saveas(gca, fullfile(fname, filename), 'png');


