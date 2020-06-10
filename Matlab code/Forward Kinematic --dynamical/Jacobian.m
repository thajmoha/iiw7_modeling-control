%% Jacobian Problem
Forward_solution

d_07 = T_07(1:3,4);
%% Assign dof
var_dof = [th1,th2,th3,th4,th5,th6,th7];
ru = ones(1,7);
%% Determining J
dof = length(var_dof);
k = [0;0;1];
Jw=sym(zeros(3,dof));
Jw(3,1)=ru(1)*sym(1);

 for i =1:dof
     Jv(:,i)=diff(d_07,var_dof(i));
        %calculating Jw 
        if i>1
                z = Tn(1:3,1:3,i-1)*k;
                Jw(:,i)=ru(i)*z;

        end
 end
% Jv
% Jw

Jw(all(Jw==0,2),:)=[];

J=[Jv;sym(Jw)];
J = simplify(J)
%  Jplus = transpose(J)*inv(J*transpose(J));

% %% 
syms th1dot th2dot th3dot th4dot th5dot th6dot th7dot
var_dof_dot = [th1dot, th2dot, th3dot, th4dot, th5dot,th6dot,th7dot];
a = sym('a', [6 7]);
Jdot =a;
for i =1:dof
Jdot = Jdot+diff(J,var_dof(i))*var_dof_dot(i);
end
Jdot =Jdot-a;


a = sym('a', [3 7]);
Jvdot =a;
for i =1:dof
Jvdot = Jvdot+diff(Jv,var_dof(i))*var_dof_dot(i);
end
Jvdot =Jvdot-a;

% Jvdot - Jdot(1:3,:)