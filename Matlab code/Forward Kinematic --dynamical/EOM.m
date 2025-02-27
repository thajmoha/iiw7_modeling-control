%% symbolic program for equations of motion 
clear; clc; close all

syms g m1 m2 m3 m4 m5 m6 m7 
syms Ixx1 Iyy1 Izz1 Ixy1 Iyz1 Izx1
syms Ixx2 Iyy2 Izz2 Ixy2 Iyz2 Izx2
syms Ixx3 Iyy3 Izz3 Ixy3 Iyz3 Izx3
syms Ixx4 Iyy4 Izz4 Ixy4 Iyz4 Izx4
syms Ixx5 Iyy5 Izz5 Ixy5 Iyz5 Izx5
syms Ixx6 Iyy6 Izz6 Ixy6 Iyz6 Izx6
syms Ixx7 Iyy7 Izz7 Ixy7 Iyz7 Izx7



syms th1 th2 th3 th4 th5 th6 th7
syms th1dot th2dot th3dot th4dot th5dot th6dot th7dot   
syms L1 L2 L3 L4
%% DH matrices
Forward_solution
% Inertia_parameters
% T_2c1=[eye(3),[rx(1);ry(1);rz(1)];[0,0,0,1]];
% Tnc(:,:,1)=T_02*T_2c1;
center_mass_tranformation
Tnc(:,:,1) =T_01*T_11c;
Tnc(:,:,2) = T_02*T_22c;
Tnc(:,:,3) = T_03*T_33c;
Tnc(:,:,4) = T_04*T_44c;
Tnc(:,:,5) = T_05*T_55c;
Tnc(:,:,6)= T_06*T_66c;
Tnc(:,:,7)= T_07*T_77c;

%% change this always
g = [0;0;g]; %the gravitational vector in the ditrection of z0 in this example.
q = [th1; th2;th3;th4;th5;th6;th7];
ru = ones(1,7);
qdot = [th1dot;th2dot;th3dot;th4dot;th5dot;th6dot;th7dot];
dof = 7; % Number of DOF
mass = [m1;m2;m3;m4;m5;m6;m7];

% for iI = 1:dof     
% I(1,1,iI) = Ixx(iI);
% I(2,2,iI) = Iyy(iI);
% I(3,4,iI) = Izz(iI);
% 
% I(1,2,iI) = Ixy(iI);
% I(2,1,iI) = Ixy(iI);
% 
% I(2,3,iI) = Iyz(iI);
% I(3,2,iI) = Iyz(iI);
% 
% I(1,3,iI) = Izx(iI);
% I(3,1,iI) = Izx(iI);
% end
 D = [Ixx1 Iyy1 Izz1 Ixy1 Iyz1 Izx1;
 Ixx2 Iyy2 Izz2 Ixy2 Iyz2 Izx2;
Ixx3 Iyy3 Izz3 Ixy3 Iyz3 Izx3;
 Ixx4 Iyy4 Izz4 Ixy4 Iyz4 Izx4;
 Ixx5 Iyy5 Izz5 Ixy5 Iyz5 Izx5;
 Ixx6 Iyy6 Izz6 Ixy6 Iyz6 Izx6;
 Ixx7 Iyy7 Izz7 Ixy7 Iyz7 Izx7];

 Ixx = D(:,1);
 Iyy = D(:,2);
 Izz = D(:,3);
 Ixy = D(:,4);
 Iyz = D(:,5);
 Izx = D(:,6);
for iI = 1:dof     
I(1,1,iI) = Ixx(iI);
I(2,2,iI) = Iyy(iI);
I(3,3,iI) = Izz(iI);

I(1,2,iI) = Ixy(iI);
I(2,1,iI) = Ixy(iI);

I(2,3,iI) = Iyz(iI);
I(3,2,iI) = Iyz(iI);

I(1,3,iI) = Izx(iI);
I(3,1,iI) = Izx(iI);
end


%% angular velocity vectors
z0 = [0; 0; 1];
ru0 = ru(1);
w01 = ru0*z0*qdot(1:1);
wii = transpose(Tn(1:3,1:3,1))*w01;
ruz =[ru0*z0];

for i=2:dof
z = Tnc(1:3,3,i);
rui = ru(i);
ruz = [ruz,rui*z];
w0i = ruz*qdot(1:i);
wii(:,i) = transpose(Tn(1:3,1:3,i))*w0i;
end


%% linear velocity vectors
rdot = sym(zeros(3,dof));
for idof=1:dof
    for i =1:idof
       rdot(:,idof) = rdot(:,idof) + diff(Tnc(1:3,4,idof),q(i))*qdot(i);
    end
end

%% potential energy due to gravity
P=sym(0);
for idof =1:dof
    P = P+ mass(idof)*transpose(g)*Tnc(1:3,4,idof);
end

%% kinetic energy

K=sym(0);
for idof =1:dof 
    K = K +1/2* mass(idof)*transpose(rdot(:,idof))*rdot(:,idof) + 1/2*(transpose(wii(:,idof))*I(:,:,idof)*wii(:,idof));
end
%% Equations of motion
 phi = sym(zeros(dof,1));
 c = sym(zeros(dof,1));
 M = sym(zeros(dof));
for i=1:dof
    phi(i,1) = diff(P,q(i));
    c(i,1) = -diff(K,q(i));
    dK_dqdot = diff(K,qdot(i));
    for j=1:dof
        M(i,j) = diff(dK_dqdot,qdot(j));
        c(i,1) = c(i,1) + diff(dK_dqdot,q(j))*qdot(j);
    end
end
% M = simplify(M);
% c = simplify(c);
% phi = simplify(phi);
M2 = char(M);
fileID = fopen('M_mat.txt','w');
fprintf(fileID,'%s',M2);
fclose(fileID);


c2 = char(c);
fileID = fopen('c_mat.txt','w');
fprintf(fileID,'%s',c2);
fclose(fileID);

phi2 = char(phi);
fileID = fopen('phi_mat.txt','w');
fprintf(fileID,'%s',phi2);
fclose(fileID);
