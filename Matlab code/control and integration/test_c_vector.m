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
c_row1;
toc
c_row2;
toc
c_row3;
toc
c_row4;
toc
c_row5;
toc
c_row6;
toc
c_row7;
toc
c = [c1;c2;c3;c4;c5;c6;c7];
