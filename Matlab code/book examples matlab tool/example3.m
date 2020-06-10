%to create a SerialLink object, p560, in the workspace
mdl_puma560

p560

%  The script mdl_puma560 also creates a number of joint coordinate vectors in the
% workspace which represent the robot in some canonic configurations
qz
qr

p560.plot(qz)

% forward
p560.fkine(qz)

% We can define a tool transform, from the T6 frame to the
% actual tool tip by
p560.tool = transl(0, 0, 0.2);

p560.fkine(qz)


% We can shift the origin of the
% robot from the point inside the robot to the base of the pedestal using a base transform
p560.base = transl(0, 0, 30*0.0254);

p560.fkine(qz)

% The Toolbox supports joint angle time series, or trajectories, such as
q =[0 0 0 0 0 0
0 0.0365 -0.0365 0 0 0
0 0.2273 -0.2273 0 0 0
0 0.5779 -0.5779 0 0 0
0 0.9929 -0.9929 0 0 0
0 1.3435 -1.3435 0 0 0
0 1.5343 -1.5343 0 0 0
0 1.5708 -1.5708 0 0 0]

T = p560.fkine(q);

about(T)
