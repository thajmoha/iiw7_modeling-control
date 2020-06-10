tt = linspace(0,5,length(u));
tt = 1:length(u);

figure()

subplot(421)
plot(tt,u(1,:)), grid on
ylabel('u1')
subplot(422)
plot(tt,u(2,:)), grid on
ylabel('u2')
subplot(423)
plot(tt,u(3,:)), grid on
ylabel('u3')
subplot(424)
plot(tt,u(4,:)), grid on
ylabel('u4')
subplot(425)
plot(tt,u(5,:)), grid on
ylabel('u5')
subplot(426)
plot(tt,u(6,:)), grid on
ylabel('u6')
subplot(427)
plot(tt,u(7,:)), grid on
ylabel('u7')

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