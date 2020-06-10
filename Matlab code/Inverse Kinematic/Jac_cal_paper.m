%% calculating the Jacobian 
%% cleaning
clear
clc
close all
%% loading Transformation matrix
load('T_i_ii.mat')
dof = 7;
T = T_n(:,:,dof)


for i =1:7

    if i>1
        % update T for the next round
        T = T_n(:,:,dof+1-i)*T;
    end
        
nx = T(1,1);
ny = T(2,1);
nz = T(3,1);
ox = T(1,2);
oy = T(2,2);
oz = T(3,2);
ax = T(1,3);
ay = T(2,3);
az = T(3,3);
Px = T(1,4);
Py = T(2,4);
Pz = T(3,4);

dx = -nx*Py + ny*Px;
dy = -ox*Py + oy*Px;
dz = -ax*Py + ay*Px;

delx = nz;
dely = oz;
delz = az;
J(:,8-i) = [dx;dy;dz;delx;dely;delz];

end




