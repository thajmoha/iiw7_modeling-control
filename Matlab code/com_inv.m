for i=1:length(phi)
     v = Theta(:,i);
    [pxd(i),pyd(i),pzd(i),nxd(i),nyd(i),nzd(i),oxd(i),oyd(i),ozd(i),axd(i),ayd(i),azd(i)] = ff_fun(v);
end

figure(3)
plot(xd,yd,'b--')
grid on 
hold on
plot(pxd,pyd,'ro')