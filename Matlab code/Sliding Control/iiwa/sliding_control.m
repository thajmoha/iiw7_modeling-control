
% uncertinities
F = 0;
D = 0;

% control parameters
eta = 1; %control effort reach_time = s(0)/eta
lambda = 2; 
eps = 0.01;

k = F + D + eta;
s = x(dof+1:end) - qdot_des +lambda*(x(1:dof)-q_des);
sr = qddot_des - lambda*(x(dof+1:end)-qdot_des);
sw = k.*sign(s);

for i=1:dof
    if abs(s(i)) <=eps
        sw(i) = k*tanh(s(i)/eps);
%         sw(i) = k(i)*s(i)/eps;
    end
end

u = c + phi + b.*x(dof+1:end) + M*(sr - sw);