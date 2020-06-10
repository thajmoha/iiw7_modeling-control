disp_v =[1:20:length(time)];
figure(1)
plot(Y,Z,'-k','linewidth',1.2)
xlabel('yd'),ylabel('zd')
grid on 

figure(2)
plot(time(disp_v),X(disp_v),'-','linewidth',1.2)
hold on
plot(time(disp_v),Xdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Xddot(disp_v),'--*','linewidth',1.2)
legend('position','velocity','acceleration')
xlabel('Time')
title('X_{d}')
grid on

figure(3)
plot(time(disp_v),Y(disp_v),'linewidth',1.2)
hold on
plot(time(disp_v),Ydot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Yddot(disp_v),'--*','linewidth',1.2)
legend('position','velocity','acceleration')
xlabel('Time')
title('Y_{d}')
grid on


figure(4)
plot(time(disp_v),Z(disp_v),'linewidth',1.2)
hold on
plot(time(disp_v),Zdot(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Zddot(disp_v),'--*','linewidth',1.2)
legend('position','velocity','acceleration')
xlabel('Time')
title('Z_{d}')
grid on


figure(3)
hold on 
plot(time(disp_v),dydt(disp_v),'--s')
