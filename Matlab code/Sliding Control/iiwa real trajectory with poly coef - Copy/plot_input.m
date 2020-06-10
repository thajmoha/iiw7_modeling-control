% tt = tt(1:end);
% u = u(:,1:end-1);
figure
plot(tt,u(1,:),'linewidth',1.2), grid on
xlabel('Time')
ylabel('u1')
save_fig_plz


figure
plot(tt,u(2,:),'linewidth',1.2), grid on
xlabel('Time')
ylabel('u2')
save_fig_plz



figure
plot(tt,u(3,:),'linewidth',1.2)
grid on
xlabel('Time')
ylabel('u3')
save_fig_plz


figure
plot(tt,u(4,:),'linewidth',1.2), grid on
xlabel('Time')
ylabel('u4')
save_fig_plz


figure
plot(tt,u(5,:),'linewidth',1.2), grid on
xlabel('Time')
ylabel('u5')
save_fig_plz


figure
plot(tt,u(6,:),'linewidth',1.2), grid on
xlabel('Time')
ylabel('u6')
save_fig_plz


figure
plot(tt,u(7,:),'linewidth',1.2), grid on
xlabel('Time')
ylabel('u7')
save_fig_plz


% figure()
% subplot(321)
% plot(t,theta_des(1,:)*180/pi,t, xx(:,1)'*180/pi)
% ylabel('\theta_{1}'), grid on
% legend('des','act')
% subplot(322)
% plot(t,theta_des(2,:)*180/pi,t,xx(:,2)'*180/pi)
% ylabel('\theta_{2}'), grid on
% legend('des','act')
% subplot(323)
% plot(t,theta_des(3,:)*180/pi,t,xx(:,3)'*180/pi)
% ylabel('\theta_{3}'), grid on
% legend('des','act')
% subplot(324)
% plot(t,theta_des(4,:)*180/pi,t,xx(:,4)'*180/pi)
% ylabel('\theta_{4}'), grid on
% legend('des','act')
% subplot(325)
% plot(t,theta_des(5,:)*180/pi,t,xx(:,5)'*180/pi)
% ylabel('\theta_{5}'), grid on
% legend('des','act')
% subplot(326)
% plot(t,theta_des(6,:)*180/pi,t,xx(:,6)'*180/pi)
% ylabel('\theta_{6}'), grid on
% suptitle('\theta: DESIRED vs ACTUAL [deg]')
% legend('des','act')
% 
% figure()
% subplot(321)
% plot(t,theta_des_dot(1,:)*180/pi,t, xx(:,7)'*180/pi)
% ylabel('\theta_{1}'), grid on
% legend('des','act')
% subplot(322)
% plot(t,theta_des_dot(2,:)*180/pi,t,xx(:,8)'*180/pi)
% ylabel('\theta_{2}'), grid on
% legend('des','act')
% subplot(323)
% plot(t,theta_des_dot(3,:)*180/pi,t,xx(:,9)'*180/pi)
% ylabel('\theta_{3}'), grid on
% legend('des','act')
% subplot(324)
% plot(t,theta_des_dot(4,:)*180/pi,t,xx(:,10)'*180/pi)
% ylabel('\theta_{4}'), grid on
% legend('des','act')
% subplot(325)
% plot(t,theta_des_dot(5,:)*180/pi,t,xx(:,11)'*180/pi)
% ylabel('\theta_{5}'), grid on
% legend('des','act')
% subplot(326)
% plot(t,theta_des_dot(6,:)*180/pi,t,xx(:,12)'*180/pi)
% ylabel('\theta_{6}'), grid on
% suptitle('\theta dot: DESIRED vs ACTUAL [deg]')
% legend('des','act')
% 
% figure()
% subplot(321)
% plot(t,(theta_des_dot(1,:)-xx(:,7)')*180/pi)
% ylabel('\theta_{1}'), grid on
% subplot(322)
% plot(t,(theta_des_dot(2,:)-xx(:,8)')*180/pi)
% ylabel('\theta_{2}'), grid on
% subplot(323)
% plot(t,(theta_des_dot(3,:)-xx(:,9)')*180/pi)
% ylabel('\theta_{3}'), grid on
% subplot(324)
% plot(t,(theta_des_dot(4,:)-xx(:,10)')*180/pi)
% ylabel('\theta_{4}'), grid on
% subplot(325)
% plot(t,(theta_des_dot(5,:)-xx(:,11)')*180/pi)
% ylabel('\theta_{5}'), grid on
% subplot(326)
% plot(t,(theta_des_dot(6,:)-xx(:,12)')*180/pi)
% ylabel('\theta_{6}'), grid on
% suptitle('\theta: tracking error(t) [deg]')
% 
% figure()
% subplot(321)
% plot(t,(theta_des_dot(1,:)-xx(:,7)')*180/pi)
% ylabel('\theta_{1}'), grid on
% subplot(322)
% plot(t,(theta_des_dot(2,:)-xx(:,8)')*180/pi)
% ylabel('\theta_{2}'), grid on
% subplot(323)
% plot(t,(theta_des_dot(3,:)-xx(:,9)')*180/pi)
% ylabel('\theta_{3}'), grid on
% subplot(324)
% plot(t,(theta_des_dot(4,:)-xx(:,10)')*180/pi)
% ylabel('\theta_{4}'), grid on
% subplot(325)
% plot(t,(theta_des_dot(5,:)-xx(:,11)')*180/pi)
% ylabel('\theta_{5}'), grid on
% subplot(326)
% plot(t,(theta_des_dot(6,:)-xx(:,12)')*180/pi)
% ylabel('\theta_{6}'), grid on
% suptitle('\theta dot: tracking error(t) [deg/sec]')