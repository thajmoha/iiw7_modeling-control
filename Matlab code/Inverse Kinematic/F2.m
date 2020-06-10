function y = F2(v,px,py,pz,n_t,o_t,a_t)

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
n_a = T_07(1:3,1);
o_a = T_07(1:3,2);
a_a = T_07(1:3,3);

P_t = [px;py;pz];
P_a = T_07(1:3,4);

rx  = dot(n_a,P_t - P_a);
ry  = dot(o_a,P_t - P_a);
rz  = dot(a_a,P_t - P_a);

rphi = 1/2*(dot(a_a,o_t)-dot(a_t,o_a));
rtheta = 1/2*(dot(n_a,a_t)-dot(n_t,a_a));
rpsi = 1/2*(dot(o_a,n_t)-dot(o_t,n_a));

y = [rx;ry;rz;rphi;rtheta;rpsi];