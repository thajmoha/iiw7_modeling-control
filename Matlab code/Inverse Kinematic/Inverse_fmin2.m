%% Trajectory Planning 

%% cleaning 
clear
clc
close all
tic
%% Desired path
desired_path3
% desired_path5
%% 
DH_table

% theta0 = DH_iiwa7(:,4);
% theta0 =   wrapTo2Pi([135.4216
%   452.5575
%  -555.4199
%    39.7709
%  -570.6448
%   418.9700
%  -803.3634]);
% theta0 = [.1;.1;.1;.1;.1;.1;.1];
theta0 = zeros(1,7);
theta0(4)=pi/2;
% theta0(5) = asin(r/(L3+L4)); % this condtion for desired_path5

Theta = zeros(7,length(phi));
solver_Case = 1;
for i=1:length(phi)
switch solver_Case
    case 1
        option  = optimset('Algorithm','levenberg-marquardt');
        fun = @(theta) fcost3(theta,xd(i),yd(i),zd(i),n_t(:,i),o_t(:,i),a_t(:,i));
        theta = fsolve(fun,theta0,option);
    case 2
        option  = optimset('Algorithm','levenberg-marquardt');
        fun = @(theta) fcost2(theta,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
        A = [];
        b = [];
        Aeq = [];
        beq = [];
        lb = [170,120,170,120,170,120,175]*-pi/180;
        ub = [170,120,170,120,170,120,175]*pi/180;
        theta = fmincon(fun,theta0,A,b,Aeq,beq,lb,ub);
end

theta0 = theta;
Theta(:,i)=theta0;
end

toc
Theta_star = wrapToPi(Theta);

figure
plot(Theta(1,:)*180/pi,'b')
hold on 
plot(Theta(2,:)*180/pi,'r')
grid on 
legend('\theta_1','\theta_2')


figure
plot(Theta(3,:)*180/pi,'b')
hold on 
plot(Theta(4,:)*180/pi,'r')
grid on 
legend('\theta_3','\theta_4')


figure
plot(Theta(5,:)*180/pi,'b')
hold on 
plot(Theta(6,:)*180/pi,'r')
hold on 
plot(Theta(7,:)*180/pi,'k')
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
plot(yd,zd,'b--')
grid on 
hold on
plot(pyd,pzd,'ro')
legend('desired','actual')
% 
% figure
% plot3(pxd,pyd,pzd)
% xlim([0 1.2])


figure 
plot(nxd,'x')
hold on 
plot(nyd,'*')
hold on 
plot(nzd,'o')
legend('nx','ny','nz')

figure 
plot(oxd,'x')
hold on 
plot(oyd,'*')
hold on 
plot(ozd,'o')
legend('ox','oy','oz')

figure 
plot(axd,'x')
hold on 
plot(ayd,'*')
hold on 
plot(azd,'o')
legend('ax','ay','az')

toc
    