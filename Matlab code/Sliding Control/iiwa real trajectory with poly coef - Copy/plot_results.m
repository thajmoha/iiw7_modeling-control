
figure
plot(t,Theta(1,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,1)*180/pi,'--b','linewidth',1.2)
plot(t,Theta(2,:)*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,2)*180/pi,'--r','linewidth',1.2)
legend('\theta_1^d','\theta_1','\theta_2^d','\theta_2')
xlabel('Time')
save_fig_plz

figure
E_disp(' $(\theta_1)$',Theta(1,:),x(:,1),t)
hold on 
E_disp(' $(\theta_2)$',Theta(2,:),x(:,2),t)
legend('\theta_1','\theta_2')
save_fig_plz


figure
plot(t,Theta(3,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,3)*180/pi,'--b','linewidth',1.2)
plot(t,Theta(4,:)*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,4)*180/pi,'--r','linewidth',1.2)
legend('\theta_3^d','\theta_3','\theta_4^d','\theta_4')
xlabel('Time')
save_fig_plz
figure
E_disp(' $(\theta_3)$',Theta(3,:),x(:,3),t)
hold on 
E_disp(' $(\theta_4)$',Theta(4,:),x(:,4),t)
legend('\theta_3','\theta_4')
save_fig_plz

figure
plot(t,Theta(5,:)*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,5)*180/pi,'--b','linewidth',1.2)
plot(t,Theta(6,:)*180/pi,'r','linewidth',1.2)
hold on 
plot(t,x(:,6)*180/pi,'--r','linewidth',1.2)
plot(t,Theta(7,:)*180/pi,'k','linewidth',1.2)
plot(t,x(:,7)*180/pi,'--k','linewidth',1.2)
grid on 
legend('\theta_5^d','\theta_5','\theta_6^d','\theta_6','\theta_7^d','\theta_7')
xlabel('Time')
save_fig_plz
figure
E_disp(' $(\theta_5)$',Theta(5,:),x(:,5),t)
hold on 
E_disp(' $(\theta_6)$',Theta(6,:),x(:,6),t)
hold on 
E_disp(' $(\theta_7)$',Theta(7,:),x(:,7),t)
legend('\theta_5','\theta_6','\theta_7')
save_fig_plz
% velocity

figure
plot(t,Theta_dot(1,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,8),'--b','linewidth',1.2)
plot(t,Theta_dot(2,:),'r','linewidth',1.2)
plot(t,x(:,9),'--r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{1}^{d}$','$\dot{\theta}_{1}$','$\dot{\theta}_{2}^{d}$','$\dot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');
xlabel('Time')
save_fig_plz

figure
E_disp(' $(\dot{\theta_1})$',Theta_dot(1,:),x(:,8),t)
hold on 
E_disp(' $(\dot{\theta_2})$',Theta_dot(2,:),x(:,9),t)
hl = legend('$\dot{\theta}_{1}$','$\dot{\theta}_{2}$');
set(hl, 'Interpreter', 'latex');
save_fig_plz

figure
plot(t,Theta_dot(3,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,10),'--b','linewidth',1.2)
plot(t,Theta_dot(4,:),'r','linewidth',1.2)
plot(t,x(:,11),'--r','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{3}^{d}$','$\dot{\theta}_{3}$','$\dot{\theta}_{4}^{d}$','$\dot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');
xlabel('Time')
save_fig_plz

figure
E_disp(' $(\dot{\theta_3})$',Theta_dot(3,:),x(:,10),t)
hold on 
E_disp(' $(\dot{\theta_4})$',Theta_dot(4,:),x(:,11),t)
hl = legend('$\dot{\theta}_{3}$','$\dot{\theta}_{4}$');
set(hl, 'Interpreter', 'latex');
save_fig_plz



figure
plot(t,Theta_dot(5,:),'b','linewidth',1.2)
hold on 
plot(t,x(:,12),'--b','linewidth',1.2)
plot(t,Theta_dot(6,:),'r','linewidth',1.2)
hold on 
plot(t,x(:,13),'--r','linewidth',1.2)
plot(t,Theta_dot(7,:),'k','linewidth',1.2)
plot(t,x(:,14),'--k','linewidth',1.2)
grid on 
hl = legend('$\dot{\theta}_{5}^{d}$','$\dot{\theta}_{5}$','$\dot{\theta}_{6}^{d}$','$\dot{\theta}_{6}$','$\dot{\theta}_{7}^{d}$','$\dot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');
xlabel('Time')
save_fig_plz
figure
E_disp(' $(\dot{\theta_5})$',Theta_dot(5,:),x(:,12),t)
hold on 
E_disp(' $(\dot{\theta_6})$',Theta_dot(6,:),x(:,13),t)
hold on 
E_disp(' $(\dot{\theta_7})$',Theta_dot(7,:),x(:,14),t)
hl = legend('$\dot{\theta}_{5}$','$\dot{\theta}_{6}$','$\dot{\theta}_{7}$');
set(hl, 'Interpreter', 'latex');
save_fig_plz