
pxd = zeros(1,length(time));
pyd = pxd;
pzd = pxd;

n_r = zeros(3,length(time));

o_r = n_r;

a_r = n_r;

for i=1:length(time)
     v = Theta(:,i);
    [pxd(i),pyd(i),pzd(i),n_r(:,i),o_r(:,i),a_r(:,i)] = ff_fun(v);
end

figure
plot(Y,Z,'b--','linewidth',1.2)
grid on 
hold on
plot(pyd,pzd,'ro','linewidth',1.2)
legend('desired','actual')

figure
plot(time(disp_v),pxd(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),X(disp_v),'--*','linewidth',1.2)
title('X')

figure
plot(time(disp_v),pyd(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Y(disp_v),'--*','linewidth',1.2)
title('Y')

figure
plot(time(disp_v),pzd(disp_v),'--o','linewidth',1.2)
hold on 
plot(time(disp_v),Z(disp_v),'--*','linewidth',1.2)
title('Z')



figure 
plot(time(disp_v),n_t(1,disp_v)','--x','linewidth',1.2)
hold on
plot(time(disp_v),n_t(2,disp_v)','--o','linewidth',1.2)
hold on 
plot(time(disp_v),n_t(3,disp_v)','--s','linewidth',1.2)
hold on
plot(time(disp_v),n_r(1,disp_v)','--x','linewidth',1.2)
hold on
plot(time(disp_v),n_r(2,disp_v)','--o','linewidth',1.2)
hold on 
plot(time(disp_v),n_r(3,disp_v)','--s','linewidth',1.2)
legend('n_{xd}','n_{yd}','n_{zd}','n_x','n_y','n_z')
title('n')


figure 
plot(time(disp_v),o_t(1,disp_v)','--x','linewidth',1.2)
hold on
plot(time(disp_v),o_t(2,disp_v)','--o','linewidth',1.2)
hold on 
plot(time(disp_v),o_t(3,disp_v)','--s','linewidth',1.2)
hold on
plot(time(disp_v),o_r(1,disp_v)','--x','linewidth',1.2)
hold on
plot(time(disp_v),o_r(2,disp_v)','--o','linewidth',1.2)
hold on 
plot(time(disp_v),o_r(3,disp_v)','--s','linewidth',1.2)
legend('o_{xd}','o_{yd}','o_{zd}','o_x','o_y','o_z')
title('o')

figure 
plot(time(disp_v),a_t(1,disp_v)','--x','linewidth',1.2)
hold on
plot(time(disp_v),a_t(2,disp_v)','--o','linewidth',1.2)
hold on 
plot(time(disp_v),a_t(3,disp_v)','--s','linewidth',1.2)
hold on
plot(time(disp_v),a_r(1,disp_v)','--x','linewidth',1.2)
hold on
plot(time(disp_v),a_r(2,disp_v)','--o','linewidth',1.2)
hold on 
plot(time(disp_v),a_r(3,disp_v)','--s','linewidth',1.2)
legend('a_{xd}','a_{yd}','a_{zd}','a_x','a_y','a_z')
title('a')
    