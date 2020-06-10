%% Trajectory Planning 

%% cleaning 
clear
clc
close all
tic
%% Desired path
desired_path3

%% 
DH_table

theta0 = zeros(7,1);
theta0(4)=pi/2;

Theta = zeros(7,length(phi));
epsilon = .02;
alfa = 1;

for i=1:length(phi)
    i
    ic = 0;
        dist2 =100;
    while dist2 > epsilon
        ic = ic+1;
        J = iwwa_Jac(theta0);
        dist1_v = F(theta0,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
        dist1 = norm(dist1_v(1:3));
        delta_theta = pinv(J)*F(theta0,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
        theta = theta0 - alfa*delta_theta;
        dist2_v = F(theta,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
        dist2 = norm(dist2_v(1:3));
        icc = 0;
        while round(dist2,3) > round(dist1,3)
            icc = icc+1;
        delta_theta = 1/icc*delta_theta;
        theta = theta0 - alfa*delta_theta;
        dist2 = norm(F(theta,xd(i),yd(i),zd(i),nx(i),oy(i),az(i)));
        end
    theta0 = theta;    
    end
    error(i) = dist2;
    ic
    Theta(:,i)=theta0;
end

toc
Theta_star = wrapToPi(Theta);

figure
plot(Theta_star(1,:)*180/pi,'b')
hold on 
plot(Theta_star(2,:)*180/pi,'r')
grid on 
legend('\theta_1','\theta_2')


figure
plot(Theta_star(3,:)*180/pi,'b')
hold on 
plot(Theta_star(4,:)*180/pi,'r')
grid on 
legend('\theta_3','\theta_4')


figure
plot(Theta_star(5,:)*180/pi,'b')
hold on 
plot(Theta_star(6,:)*180/pi,'r')
hold on 
plot(Theta_star(7,:)*180/pi,'k')
grid on 
legend('\theta_5','\theta_6','\theta_7')


pxd = zeros(1,length(phi));
pyd = pxd;
pzd = pxd;

nxd = pxd;
nyd = pxd;
nzd = pxd;

oxd = pxd;
oyd = pxd;
ozd = pxd;

axd = pxd;
ayd = pxd;
azd = pxd;

for i=1:length(phi)
     v = Theta_star(:,i);
    [pxd(i),pyd(i),pzd(i),nxd(i),nyd(i),nzd(i),oxd(i),oyd(i),ozd(i),axd(i),ayd(i),azd(i)] = ff_fun(v);
end

figure
plot(yd,zd,'bx')
grid on 
hold on
plot(pyd,pzd,'ro')
legend('desired','actual')
% 
% figure
% plot3(pxd,pyd,pzd)
% xlim([0 1.2])


figure 
plot(nzd)
hold on 
plot(oxd)
hold on 
plot(ayd)
legend('nz','ox','ay')

toc
    