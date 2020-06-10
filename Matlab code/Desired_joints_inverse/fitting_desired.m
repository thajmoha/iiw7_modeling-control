load('desired_trajectory_joints3.mat')
order = 22;
Q_theta  = zeros(7,order+1);
Q_theta_dot  = zeros(7,order+1);
Q_theta_ddot  = zeros(7,order+1);


x = time;

for i=1:7
    y = Theta(i,:);
    p = polyfit(x,y,order);
    Q_theta(i,:) = p;
end

for i=1:7
    y = Theta_dot(i,:);
    p = polyfit(x,y,order);
    Q_theta_dot(i,:) = p;
end

for i=1:7
    y = Theta_ddot(i,:);
    p = polyfit(x,y,order);
    Q_theta_ddot(i,:) = p;
end


y = Theta_ddot(1,:);
p = Q_theta_ddot(1,:);

y2 = polyval(p,x);

plot(x,y,'--r')
hold on 
plot(x,y2,'-b')