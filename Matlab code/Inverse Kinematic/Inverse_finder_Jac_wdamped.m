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

% theta0 = DH_iiwa7(:,4);
% theta0 =   wrapTo2Pi([135.4216
%   452.5575
%  -555.4199
%    39.7709
%  -570.6448
%   418.9700
%  -803.3634]);
% theta0 = [.1;.1;.1;.1;.1;.1;.1];
theta0 = zeros(7,1);
theta0(4)=pi/2;

Theta = zeros(7,length(phi));
lambda = 10;

for i=1:length(phi)

error_norm = 10;    
epsilon = .05;
ic = 0;
while error_norm > epsilon
    ic = ic+1;
    J = iwwa_Jac(theta0);
    if ic >2 && ic<4
        i
        det(transpose(J)*eye(6)*J)
        rank(transpose(J)*eye(6)*J)
    end
%     delta_theta = pinv(J)*F(theta0,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
    A = transpose(J)*J+lambda*eye(7);
    B = transpose(J)*F(theta0,xd(i),yd(i),zd(i),nx(i),oy(i),az(i));
    delta_theta = A\B;
    theta = theta0 - delta_theta;
    error_norm = norm(theta - theta0);
    theta0 = theta;
end
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
plot(nzd)
hold on 
plot(oxd)
hold on 
plot(ayd)
legend('nz','ox','ay')

toc
    