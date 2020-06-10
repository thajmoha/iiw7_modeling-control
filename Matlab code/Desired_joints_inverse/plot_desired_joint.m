
figure
plot(time,Theta(1,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(time,Theta(2,:)*180/pi,'r','linewidth',1.2)
grid on 
legend('\theta_1','\theta_2')
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time,Theta(3,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(time,Theta(4,:)*180/pi,'r','linewidth',1.2)
grid on 
legend('\theta_3','\theta_4')
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');


figure
plot(time,Theta(5,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(time,Theta(6,:)*180/pi,'r','linewidth',1.2)
hold on 
plot(time,Theta(7,:)*180/pi,'k','linewidth',1.2)
grid on 
legend('\theta_5','\theta_6','\theta_7')
ifig = ifig+1;
filename = strcat('fig',num2str(ifig));
saveas(gca, fullfile(fname, filename), 'png');