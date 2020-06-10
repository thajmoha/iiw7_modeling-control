%% desired 

phi = [0:.1:2*pi];
xc = 3;
yc = 2;
r  = 1.5;
xd = xc + r*cos(phi);
yd = yc + r*sin(phi);

ThEd = atan2(yd,xd);

figure(2)
plot(xd,yd,'b--')
grid on 

figure(3)
plot(ThEd)


X = [xd',yd',ThEd'];
% [Y,Xf,Af] = myNeuralNetworkFunction1(X)
[Y,Xf,Af] = net(X')

for i=1:length(Y)
     v = Y(:,i);
    [pxd(i),pyd(i),ThEdd(i)] = ff_fun(v);
end

figure(2)
hold on
plot(pxd,pyd,'r-o')

figure(3)
hold on 
plot(ThEdd)


