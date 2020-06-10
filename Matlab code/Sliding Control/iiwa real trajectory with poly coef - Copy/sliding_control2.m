%sliding mode control
%assume the only uncertainity is froction coefficient 0<=B<=2*B
global eta eps lambda

F = 2*B.*abs(x(dof+1:ns));
k = F + eta; %robsustness gain
s = x(dof+1:ns) - qdot_des + lambda*(x(1:dof)-q_des); %Surfaces
sr = qddot_des - lambda*(x(dof+1:ns)-qdot_des); %See notes
sw = k.*sign(s);

for i=1:dof
   if abs(s(i)) <= eps
     %sw(i) = k(i)*tanh(s(i)/eps); %hyper-tangent
      sw(i) = k(i)*s(i)/eps; %saturation
   end
end

global u 
u(:,ode_indx) = c + phi + B.*x(dof+1:ns) + M*(sr - sw);

