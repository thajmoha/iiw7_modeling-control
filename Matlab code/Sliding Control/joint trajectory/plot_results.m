
load('coef_joint.mat')
for i=1:length(t)
 yd = funqdes(a,t(i));
q_des(i) =yd(1);
qdot_des(i) =yd(2) ;
qddot_des(i) =yd(3) ;
end



figure
plot(t,q_des*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,1)*180/pi,'-ob','linewidth',1.2)

figure
plot(t,q_des*180/pi,'r','linewidth',1.2)
hold on
plot(t,x(:,2)*180/pi,'-or','linewidth',1.2)

figure
plot(t,q_des*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,3)*180/pi,'-ob','linewidth',1.2)

figure
plot(t,q_des*180/pi,'r','linewidth',1.2)
grid on 
hold on
plot(t,x(:,4)*180/pi,'-or','linewidth',1.2)



figure
plot(t,q_des*180/pi,'b','linewidth',1.2)
hold on 
plot(t,x(:,5)*180/pi,'-ob','linewidth',1.2)

figure
plot(t,q_des*180/pi,'r','linewidth',1.2)
hold on 
plot(t,x(:,6)*180/pi,'-or','linewidth',1.2)

figure
plot(t,q_des*180/pi,'k','linewidth',1.2)
plot(t,x(:,7)*180/pi,'-ok','linewidth',1.2)
grid on 




% velocity

figure
plot(t,qdot_des,'b','linewidth',1.2)
hold on 
plot(t,x(:,8),'-ob','linewidth',1.2)

figure
plot(t,qdot_des,'r','linewidth',1.2)
hold on
plot(t,x(:,9),'-or','linewidth',1.2)
grid on 



figure
plot(t,qdot_des,'b','linewidth',1.2)
hold on 
plot(t,x(:,10),'-ob','linewidth',1.2)

figure
plot(t,qdot_des,'r','linewidth',1.2)
hold on
plot(t,x(:,11),'-or','linewidth',1.2)
grid on 



figure
plot(t,qdot_des,'b','linewidth',1.2)
hold on 
plot(t,x(:,12),'-ob','linewidth',1.2)

figure
plot(t,qdot_des,'r','linewidth',1.2)
hold on 
plot(t,x(:,13),'-or','linewidth',1.2)

figure
plot(t,qdot_des,'k','linewidth',1.2)
hold on
plot(t,x(:,14),'-ok','linewidth',1.2)
grid on 


