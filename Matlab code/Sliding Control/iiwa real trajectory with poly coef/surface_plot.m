close all
load('poly_coef.mat')
Theta = zeros(7,length(t));
Theta_dot = zeros(7,length(t));
Theta_ddot = zeros(7,length(t));
for j=1:length(t)
    for i=1:7
    Theta(i,j) =polyval(Q_theta(i,:),t(j)) ;
    Theta_dot(i,j) =polyval(Q_theta_dot(i,:),t(j)) ;
    Theta_ddot(i,j) =polyval(Q_theta_ddot(i,:),t(j)) ;
    end
end

error3 = x(:,3)'-Theta(3,:);
error3_dot = x(:,10)'-Theta_dot(3,:);
figure
plot(error3,error3_dot)
hold on 
plot(error3(1),error3_dot(1),'xr')
hold on 
plot(error3,-lambda(3)*error3,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_3'),ylabel('\theta_3dot')



error1 = x(:,1)'-Theta(1,:);
error1_dot = x(:,8)'-Theta_dot(1,:);
figure
plot(error1,error1_dot)
hold on 
plot(error1(1),error1_dot(1),'xr')
hold on 
plot(error1,-lambda(1)*error1,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_1'),ylabel('\theta_1dot')