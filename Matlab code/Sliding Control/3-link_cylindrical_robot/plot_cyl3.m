% %plot cyl3
% % plot positions
% figure(1);
% subplot(211);
% plot(t,x(:,1)*180/pi); grid;
% xlabel('time (sec)');
% ylabel('\theta_1 (deg)');
% subplot(212);
% plot(t,x(:,2),'k-',t,x(:,3),'r--'); grid;
% xlabel('time (sec)');
% ylabel('d_i (m)');
% legend('d_2','d_3');
% subplot
% 
% % % plot velocities
% % figure(2);
% % subplot(211);
% % plot(t,x(:,4)*180/pi); grid;
% % xlabel('time (sec)');
% % ylabel('\theta_1 dot (deg/s)');
% % subplot(212);
% % plot(t,x(:,5),'k-',t,x(:,6),'r--'); grid;
% % xlabel('time (sec)');
% % ylabel('d_i dot (m/s)');
% % legend('d_2 dot','d_3 dot');
% % subplot
% 
% % %Plot spatial motion
% % xe = -x(:,3).*sin(x(:,1));
% % ye = x(:,3).*cos(x(:,1));
% % ze = x(:,2);
% % figure(3);
% % plot3(xe,ye,ze); grid;
% % xlabel('x');
% % ylabel('y');
% % zlabel('z');
% 
% figure(6);
% plot(t,x(:,1)-x_des(:,1),'k-',t,x(:,2)-x_des(:,2),'b--',t,x(:,3)-x_des(:,3),'r:','LineWidth',2);
% xlabel('time (sec)');
% ylabel('errors');
% legend('\theta_1','d_2','d_3');
% 
% figure(7);
% plot(t,u(:,1),'k-',t,u(:,2),'b--',t,u(:,3),'r:','LineWidth',2);
% xlabel('time (sec)');
% ylabel('control');
% legend('\tau_1','f_2','f_3');


figure(8)
plot(tt,x_des,'-')
hold on 
plot(tt,x(:,1:3),'--')


figure(9)
plot(tt,xdot_des,'-')
hold on 
plot(tt,x(:,4:6),'--')
