% puma robot model
mdl_puma560

% normal point
qn

% endo effector 
T = p560.fkine(qn)

% Since the Puma 560 is a 6-axis robot arm with a spherical wrist we use the method
% ikine6s to compute the inverse kinematics using a closed-form solution

qi = p560.ikine6s(T)

% as mentioned earlier the inverse solution is not unique
p560.fkine(qi)


% For the case of robots which do not have six joints and a spherical wrist we need to use
% an iterative numerical solution

T = p560.fkine(qn)

qi = p560.ikine(T)

% which is different to the original value
% but does result in the correct tool pose
p560.fkine(qi)