switch desired_case
    case 1

q_des = ones(dof,1);
qdot_des = zeros(dof,1);
qddot_des = zeros(dof,1);

    case 2
        global t0 tfin
         %joint 1 move from 0 to pi
    a = coeff_poly5(t0,tfin,0,pi,0,0,0,0);
    q_des(1,1) = traj_poly5(a,t);
    qdot_des(1,1) = trajd_poly5(a,t);
    qddot_des(1,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 1
    a = coeff_poly5(t0,tfin,0,pi/2,0,0,0,0);
    q_des(2,1) = traj_poly5(a,t);
    qdot_des(2,1) = trajd_poly5(a,t);
    qddot_des(2,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 2
    a = coeff_poly5(t0,tfin,0,pi/2,0,0,0,0);
    q_des(3,1) = traj_poly5(a,t);
    qdot_des(3,1) = trajd_poly5(a,t);
    qddot_des(3,1) = trajdd_poly5(a,t);
    
    %joint 2 move from 0 to 2
    a = coeff_poly5(t0,tfin,0,pi/2,0,0,0,0);
    q_des(4,1) = traj_poly5(a,t);
    qdot_des(4,1) = trajd_poly5(a,t);
    qddot_des(4,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 2
    a = coeff_poly5(t0,tfin,0,pi/2,0,0,0,0);
    q_des(5,1) = traj_poly5(a,t);
    qdot_des(5,1) = trajd_poly5(a,t);
    qddot_des(5,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 2
    a = coeff_poly5(t0,tfin,0,pi/2,0,0,0,0);
    q_des(6,1) = traj_poly5(a,t);
    qdot_des(6,1) = trajd_poly5(a,t);
    qddot_des(6,1) = trajdd_poly5(a,t);
    %joint 2 move from 0 to 2
    a = coeff_poly5(t0,tfin,0,pi/2,0,0,0,0);
    q_des(7,1) = traj_poly5(a,t);
    qdot_des(7,1) = trajd_poly5(a,t);
    qddot_des(7,1) = trajdd_poly5(a,t);
    
    
end