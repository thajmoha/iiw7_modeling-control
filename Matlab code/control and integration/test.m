%% Test

%% Cleaning
clear
clc
close all
%% 
tic
x = zeros(21,1);

% Angles
th1 = x(1);
th2 = x(2);
th3 = x(3);
th4 = x(4);
th5 = x(5);
th6 = x(6);
th7 = x(7);
% angular speed
th1dot = x(1+7);
th2dot = x(2+7);
th3dot = x(3+7);
th4dot = x(4+7);
th5dot = x(5+7);
th6dot = x(6+7);
th7dot = x(7+7);

g = 9.80665; %m/s^2


toc
M_vec = zeros(49,1);
parfor elmIndex=1:49
   M_vec(elmIndex)=compute_mass(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,elmIndex); 
end
M = reshape(M_vec,[7,7]);
toc
phi = zeros(7,1);
c=zeros(7,1);
parfor rowIndex=1:7
   phi(rowIndex)=compute_phi(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,g,rowIndex); 
   c(rowIndex)=compute_c(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
end
toc
% c=zeros(7,1);
% parfor rowIndex=1:7
%    c(rowIndex)=compute_c(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,rowIndex); 
% end
% toc
% 
%  toc
%  % Mass 7x7
%  m_mat2;
%  toc
%  % c 7x1
%  c_mat2;
%  toc
 % phi 7x1
%  phi_mat2;
%  toc
% 
% toc 
% M_row1;
% toc
% M_row2;
% toc
% M_row3;
% toc
% M_row4;
% toc
% M_row5;
% toc
% M_row6;
% toc
% M_row7;
% toc
% M = [M1;M2;M3;M4;M5;M6;M7];
% toc
% c_row1;
% toc
% c_row2;
% toc
% c_row3;
% toc
% c_row4;
% toc
% c_row5;
% toc
% c_row6;
% toc
% c_row7;
% toc
% c = [c1;c2;c3;c4;c5;c6;c7];
% toc
% phi_mat2;
% toc