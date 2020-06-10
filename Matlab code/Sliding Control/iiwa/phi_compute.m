function [phi]=phi_compute(th1,th2,th3,th4,th5,th6,th7,th1dot,th2dot,th3dot,th4dot,th5dot,th6dot,th7dot,elmIndex)

param
switch elmIndex


case 1 
phi = 0;
 case 2 
phi =  - g*m6*(L3*(cos(th4)*sin(th2) - cos(th2)*cos(th3)*sin(th4)) + L2*sin(th2)) - g*m5*((L3*(cos(th4)*sin(th2) - cos(th2)*cos(th3)*sin(th4)))/2 + L2*sin(th2)) - g*m7*((L4*(sin(th6)*(cos(th5)*(sin(th2)*sin(th4) + cos(th2)*cos(th3)*cos(th4)) - cos(th2)*sin(th3)*sin(th5)) + cos(th6)*(cos(th4)*sin(th2) - cos(th2)*cos(th3)*sin(th4))))/2 + L3*(cos(th4)*sin(th2) - cos(th2)*cos(th3)*sin(th4)) + L2*sin(th2)) - (L2*g*m3*sin(th2))/2 - L2*g*m4*sin(th2); 
case 3 
phi =  g*m7*((L4*(sin(th6)*(cos(th3)*sin(th2)*sin(th5) + cos(th4)*cos(th5)*sin(th2)*sin(th3)) - cos(th6)*sin(th2)*sin(th3)*sin(th4)))/2 - L3*sin(th2)*sin(th3)*sin(th4)) - (L3*g*m5*sin(th2)*sin(th3)*sin(th4))/2 - L3*g*m6*sin(th2)*sin(th3)*sin(th4); 
case 4 
phi =  - g*m7*(L3*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + (L4*(cos(th6)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) - cos(th5)*sin(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))))/2) - (L3*g*m5*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)))/2 - L3*g*m6*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)); 
case 5
phi =  -(L4*g*m7*sin(th6)*(sin(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) - cos(th5)*sin(th2)*sin(th3)))/2; 
case 6 
phi =  (L4*g*m7*(cos(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) - sin(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))))/2; 
case 7 
phi = 0;
end