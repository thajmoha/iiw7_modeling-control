function F = noa_finder(x,nx,oy,az)
% x = [ny,nz,ox,oz,ax,ay]
ny = x(1);
nz = x(2);
ox = x(3);
oz = x(4);
ax = x(5);
ay = x(6);

F(1) = nx^2 +ny^2 +nz^2 - 1;
F(2) = ox^2 +oy^2 +oz^2 - 1;
F(3) = ax^2 +ay^2 +az^2 - 1;
F(4) = nx^2 +ox^2 +ax^2 - 1;
F(5) = ny^2 +oy^2 +ay^2 - 1;
F(6) = nz^2 +oz^2 +az^2 - 1;

