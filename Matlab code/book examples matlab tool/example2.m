%% 2link robot

% definig links
L(1) = Link([0 0 1 0]);
L(2) = Link([0 0 1 0]);
L

%the constructor SerialLink
two_link = SerialLink(L, 'name', 'two link');
two_link

%performs the above steps and defines this robot in the MATLAB® workspace, creating
%a SerialLink object named twolink.
mdl_twolink

% number of joints
twolink.n
links = twolink.links
% forward kinematic
twolink.fkine([0 0])
twolink.fkine([pi/4 -pi/4])

% The robot can be visualized graphically
twolink.plot([0 0])
twolink.plot([pi/4 -pi/4])