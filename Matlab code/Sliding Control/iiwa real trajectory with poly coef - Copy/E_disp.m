function []= E_disp(ilabel,x1,x2,time)
x1 = x1(:);
x2 = x2(:);

y  = x1-x2;

plot(time,y,'linewidth',1.2)
grid on 
xlabel('Time')
ylabel('error')
