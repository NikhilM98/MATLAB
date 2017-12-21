% Page 37
x1 = [0 1.5 3 4 5 7 9 10];
y1 = 0.5*x1 -2; % ans one

t2 = linspace(1,10,10);
x2 = t2 .* sin(t2);
y2 = ( t2 - 1) ./ ( t2 + 1);
z2 = sin ( t2.^2) ./ t2.^2 ;

c3 = [ 0 ; pi/4 ; pi/2 ; 3*pi/4 ; pi ; 5*pi/5 ];
x3 = 2 * cos(c3);
y3 = 2 * sin(c3);
check3 = sqrt( x3.^2 + y3.^2 );

c4 = linspace(0,10,11);
r4 = 0.5;
x4 = r4.^c4;
s4 = sum(x4);
infi4 = 1/(1-r4);

c41 = linspace(0,50,51);
r41 = 0.5;
x41 = r41.^c41;
s41 = sum(x41);
infi41 = 1/(1-r41);

c42 = linspace(0,10,101);
r42 = 0.5;
x42 = r42.^c42;
s42 = sum(x42);
infi42 = 1/(1-r42);

v5=0:0.2:12;
m5 = [sin(v5); cos(v5)];
sizev5 = size(v5);
sizem5 = size(m5);
first10 = m5(1,1:10);
first10 = first10';
