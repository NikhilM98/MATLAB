% Page 44 Ans 4
z = linspace(0, 20, 1000);
x = sin(z);
y = cos(z);
x1 = 2*sin(z);
y1 = 2*cos(z);
figure;
plot3(x,y,z,y1,x1,z)