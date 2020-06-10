
% uncertinities
F = 0;
D = 0;

% control parameters
eta = .15*ones(7,1); %control effort reach_time = s(0)/eta
eta(1) = .20;
eta(2) = .18;
eta(5:7)=.55;
eta(6) = .30;
lambda = .20*ones(7,1);
lambda(7) = .40;
eps = 0.005;

k = F + D + eta;
s = x(dof+1:end) - qdot_des +lambda.*(x(1:dof)-q_des);
sr = qddot_des - lambda.*(x(dof+1:end)-qdot_des);
sw = k.*sign(s);

for i=1:dof
    if abs(s(i)) <=eps
        sw(i) = k(i)*tanh(s(i)/eps);
%         sw(i) = k(i)*s(i)/eps;
    end
end

u = c + phi + b.*x(dof+1:end) + M*(sr - sw);