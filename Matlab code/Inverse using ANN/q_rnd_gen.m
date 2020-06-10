function q = q_rnd_gen(limit,num_points)
a = limit(1);
b = limit(2);
q = (b-a).*rand(num_points,1) + a;