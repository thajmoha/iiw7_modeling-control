if length(lambda) ==1
    lambda = lambda*ones(dof,1);
end
    
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


i=1;
errori = x(:,i)'-Theta(i,:);
errori_dot = x(:,i+dof)'-Theta_dot(i,:);
figure
plot(errori,errori_dot)
hold on 
plot(errori(1),errori_dot(1),'xr')
hold on 
plot(errori,-lambda(i)*errori,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_1'),ylabel('\theta_1dot')


i=2;
errori = x(:,i)'-Theta(i,:);
errori_dot = x(:,i+dof)'-Theta_dot(i,:);
figure
plot(errori,errori_dot)
hold on 
plot(errori(1),errori_dot(1),'xr')
hold on 
plot(errori,-lambda(i)*errori,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_2'),ylabel('\theta_2dot')


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



error4 = x(:,4)'-Theta(4,:);
error4_dot = x(:,11)'-Theta_dot(4,:);
figure
plot(error4,error4_dot)
hold on 
plot(error4(1),error4_dot(1),'xr')
hold on 
plot(error4,-lambda(4)*error4,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_4'),ylabel('\theta_4dot')

i=5;
errori = x(:,i)'-Theta(i,:);
errori_dot = x(:,i+dof)'-Theta_dot(i,:);
figure
plot(errori,errori_dot)
hold on 
plot(errori(1),errori_dot(1),'xr')
hold on 
plot(errori,-lambda(i)*errori,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_5'),ylabel('\theta_5dot')

i=6;
errori = x(:,i)'-Theta(i,:);
errori_dot = x(:,i+dof)'-Theta_dot(i,:);
figure
plot(errori,errori_dot)
hold on 
plot(errori(1),errori_dot(1),'xr')
hold on 
plot(errori,-lambda(i)*errori,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_6'),ylabel('\theta_6dot')

i=7;
errori = x(:,i)'-Theta(i,:);
errori_dot = x(:,i+dof)'-Theta_dot(i,:);
figure
plot(errori,errori_dot)
hold on 
plot(errori(1),errori_dot(1),'xr')
hold on 
plot(errori,-lambda(i)*errori,'--k','linewidth',1.2)
legend('trajectory','initial pos')
xlabel('\theta_7'),ylabel('\theta_7dot')