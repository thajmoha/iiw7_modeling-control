function y = fcost3(v,px,py,pz,n_t,o_t,a_t)

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


T_07 = [sin(th7)*(sin(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3))) - cos(th7)*(sin(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3)))), sin(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3))) - cos(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)), - cos(th7)*(sin(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3))) - sin(th7)*(sin(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3)))), - L4*(cos(th6)*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) - sin(th6)*(cos(th5)*(cos(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) - cos(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th3)*sin(th1) + cos(th1)*cos(th2)*sin(th3)))) - L3*(sin(th4)*(sin(th1)*sin(th3) - cos(th1)*cos(th2)*cos(th3)) + cos(th1)*cos(th4)*sin(th2)) - L2*cos(th1)*sin(th2);
 cos(th7)*(sin(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3)))) - sin(th7)*(sin(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3))), cos(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) - sin(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3))),   cos(th7)*(sin(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) - cos(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3))) + sin(th7)*(sin(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) + cos(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3)))),   L4*(cos(th6)*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) - sin(th6)*(cos(th5)*(cos(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) + sin(th1)*sin(th2)*sin(th4)) + sin(th5)*(cos(th1)*cos(th3) - cos(th2)*sin(th1)*sin(th3)))) + L3*(sin(th4)*(cos(th1)*sin(th3) + cos(th2)*cos(th3)*sin(th1)) - cos(th4)*sin(th1)*sin(th2)) - L2*sin(th1)*sin(th2);
                                                                                                                                                                                       sin(th7)*(sin(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) - cos(th5)*sin(th2)*sin(th3)) - cos(th7)*(cos(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) - sin(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))),                                                                                                                sin(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) + cos(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4)),                                                                                                                                                                                       - cos(th7)*(sin(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) - cos(th5)*sin(th2)*sin(th3)) - sin(th7)*(cos(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) - sin(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))),                                                                                                                                                              L1 + L3*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4)) + L4*(sin(th6)*(cos(th5)*(cos(th2)*sin(th4) - cos(th3)*cos(th4)*sin(th2)) + sin(th2)*sin(th3)*sin(th5)) + cos(th6)*(cos(th2)*cos(th4) + cos(th3)*sin(th2)*sin(th4))) + L2*cos(th2);
                                                                                                                                                                                                                                                                                                                                                                                                                                                                  0,                                                                                                                                                                                                                                                                            0,                                                                                                                                                                                                                                                                                                                                                                                                                                                                    0,                                                                                                                                                                                                                                                                                                                                                                                                        1];
 nx = n_t(1);
 ny = n_t(2);
 nz = n_t(3);
 
  ox = o_t(1);
 oy = o_t(2);
 oz = o_t(3);
 
  ax = a_t(1);
 ay = a_t(2);
 az = a_t(3);


y(1) =  T_07(1,4)-px;
y(2) =    T_07(2,4)-py;
y(3) =    T_07(3,4)-pz;
y(4) =    T_07(1,1)-nx;
y(5) =    T_07(2,2)-oy;
y(6) =    T_07(3,3)-az;
y(7) = T_07(2,1)-ny;
y(8) = T_07(3,1)-nz;
y(9) = T_07(1,2)-ox;
y(10) = T_07(3,2)-oz;
y(11) = T_07(1,3)-ax;
y(12) = T_07(3,2)-ay;

