%% Trajectory planning
global qt qtdot qtddot
%% Initiating
% Boundary Condition problem
q0 = 0; % initial angle
qdot0 = 0; % initial velocity
qddot0 = 0; % initial acc.
qf = .1; %final angle
qdotf = 0; %final velocity
qddotf = 0; %final acc.
t0 = 0; % start time 
tf = 1; % final time
a=Bcond(q0,qdot0,qddot0,qf,qdotf,qddotf,t0,tf);

syms t 
p=fliplr(a');

q_fun = p(1)*t^5 + p(2)*t^4 + p(3)*t^3 + p(4)*t^2 + p(5)*t + p(6);


qdot_fun = diff(q_fun,t);
qddot_fun = diff(qdot_fun,t) ;

dt =tf/1000;
time = 0:dt:tf;
qt =  double(subs(q_fun,time))';
qtdot = double(subs(qdot_fun,time))';
qtddot = double(subs(qddot_fun,time))';

figure 
plot(time,qt,'b','linewidth',1.2)
hold on 
plot(time,qtdot,'r','linewidth',1.2)
hold on 
plot(time,qtddot,'k','linewidth',1.2)
grid on
xlabel('Time [sec]')
ylabel('$\mathrm{q}$, $\dot{\mathrm{q}}$, $\ddot{\mathrm{q}}$','interpreter','latex')