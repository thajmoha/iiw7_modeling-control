function [px,py,pz,nx,ny,nz,ox,oy,oz,ax,ay,az] = ff_fun(v)

th1 = v(1);
th2 = v(2);
th3 = v(3);
th4 = v(4);
th5 = v(5);
th6 = v(6);
th7 = v(7);

L1 = 0.34;
L2 = 0.4;
L3 = 0.4;
L4 = 0.126;

T=[ sin(th7)*(sin(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3))) - cos(th7)*(sin(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3)))), sin(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3))) - cos(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)), - cos(th7)*(sin(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3))) - sin(th7)*(sin(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3)))), - L4*(cos(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) - sin(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3)))) - L3*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) - L2*cos(th1)*sin(th2);
 cos(th7)*(sin(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3)))) - sin(th7)*(sin(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3))), cos(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) - sin(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3))),   cos(th7)*(sin(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3))) + sin(th7)*(sin(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3)))),   L4*(cos(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) - sin(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3)))) + L3*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) - L2*sin(th1)*sin(th2);
                                                                                                                                                                                       sin(th7)*(sin(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) - cos(th5)*sin(th2)*sin(th3)) - cos(th7)*(cos(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) - sin(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))),                                                                                                                sin(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) + cos(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4)),                                                                                                                                                                                       - cos(th7)*(sin(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) - cos(th5)*sin(th2)*sin(th3)) - sin(th7)*(cos(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) - sin(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))),                                                                                                                                                              L1 + L3*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4)) + L4*(sin(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) + cos(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))) + L2*cos(th2)];
nx = T(1,1);
ny = T(2,1);
nz = T(3,1);

ox = T(1,2);
oy = T(2,3);
oz = T(3,2);

ax = T(1,3);
ay = T(2,3);
az = T(3,3);

px = T(1,4);
py = T(2,4);
pz = T(3,4);

 


