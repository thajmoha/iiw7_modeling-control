%% symbolic program for equations of motion of 3dof Stanford robot
clear; clc; close all
syms g 
syms th1 th2 th3 th4 th5 th6 th7
syms th1dot th2dot th3dot th4dot th5dot th6dot th7dot   

%% DH matrices
param_iiwa
Forward_solution
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


M1 = char(M(:));
fileID = fopen('mass_vec.txt','w');
fprintf(fileID,'%s',M1);
fclose(fileID);
% 
% M2 = char(M(2,:));
% fileID = fopen('M_row2.txt','w');
% fprintf(fileID,'%s',M2);
% fclose(fileID);
% 
% M3 = char(M(3,:));
% fileID = fopen('M_row3.txt','w');
% fprintf(fileID,'%s',M3);
% fclose(fileID);
% 
% M4 = char(M(4,:));
% fileID = fopen('M_row4.txt','w');
% fprintf(fileID,'%s',M4);
% fclose(fileID);
% 
% M5 = char(M(5,:));
% fileID = fopen('M_row5.txt','w');
% fprintf(fileID,'%s',M5);
% fclose(fileID);
% 
% M6 = char(M(6,:));
% fileID = fopen('M_row6.txt','w');
% fprintf(fileID,'%s',M6);
% fclose(fileID);
% 
% M7 = char(M(7,:));
% fileID = fopen('M_row7.txt','w');
% fprintf(fileID,'%s',M7);
% fclose(fileID);
% 
% c1 = char(c(1));
% fileID = fopen('c_row1.txt','w');
% fprintf(fileID,'%s',c1);
% fclose(fileID);
% 
% c2 = char(c(2));
% fileID = fopen('c_row2.txt','w');
% fprintf(fileID,'%s',c2);
% fclose(fileID);
% 
% c3 = char(c(3));
% fileID = fopen('c_row3.txt','w');
% fprintf(fileID,'%s',c3);
% fclose(fileID);
% 
% 
% c4 = char(c(4));
% fileID = fopen('c_row4.txt','w');
% fprintf(fileID,'%s',c4);
% fclose(fileID);
% 
% 
% c5 = char(c(5));
% fileID = fopen('c_row5.txt','w');
% fprintf(fileID,'%s',c5);
% fclose(fileID);
% 
% c6 = char(c(6));
% fileID = fopen('c_row6.txt','w');
% fprintf(fileID,'%s',c6);
% fclose(fileID);
% 
% c7 = char(c(7));
% fileID = fopen('c_row7.txt','w');
% fprintf(fileID,'%s',c7);
% fclose(fileID);

% phi = char(phi);
% fileID = fopen('phi_mat2.txt','w');
% fprintf(fileID,'%s',phi);
% fclose(fileID);
