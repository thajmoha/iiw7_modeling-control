%% desired 

phi = [0:.1:2*pi];
xc = 0;
yc = 0;
zc = 0;
r  = .5;
xd = xc + r*cos(phi);
yd = yc + r*sin(phi);
zd = zeros(1,length(phi));

nx = 1*ones(1,length(phi));
ny = 0*ones(1,length(phi));
nz = 0*ones(1,length(phi));

ox = 0*ones(1,length(phi));
oy = 1*ones(1,length(phi));
oz = 0*ones(1,length(phi));

ax = 0*ones(1,length(phi));
ay = 0*ones(1,length(phi));
az = 1*ones(1,length(phi));


figure(3)
plot(xd,yd,'b--')
grid on 




X = [xd',yd',zd',nx',ny',nz',ox',oy',oz',ax',ay',az'];
% [Y,Xf,Af] = myNeuralNetworkFunction1(X)
[Y,Xf,Af] = net(X')

for i=1:length(Y)
     v = Y(:,i);
    [pxd(i),pyd(i),pzd(i),nxd(i),nyd(i),nzd(i),oxd(i),oyd(i),ozd(i),axd(i),ayd(i),azd(i)] = ff_fun(v);
end

figure(3)
hold on
plot(pxd,pyd,'r-o')




