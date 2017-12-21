% Page 44 Compiled
clc;
clear all;
theta = linspace(0, 2*pi, 100);
x = cos(theta);
x1 =1 + x;
x2 = 2*x;
x3 = 0.25 * x;
x = x - 1;
y = sin(theta);
y1 = y;
y2 = 2*y;
y3 = 0.25 * y - 1;
y = y;
figure;
plot(x, y,'y*', x1, y1, 'y*', x2, y2, 'r-', x3, y3, 'b-')
axis('equal');
xlabel('x-axis')
ylabel('y-axis')
title('Plot Created by yourname')
xlim([-2,2])
ylim([-2,2])
% Answer 3
clc;
clear all;
x = linspace(0, 4*pi, 10);
y = exp(-4*x).*sin(x);
axis('equal');
figure;
plot(x,y)
xlabel('x-axis')
ylabel('y-axis')

clc;
clear all;
x = linspace(0, 4*pi, 50);
y = exp(-4*x).*sin(x);
axis('equal');
figure;
plot(x,y)
xlabel('x-axis')
ylabel('y-axis')

x = linspace(0, 4*pi, 100);
y = exp(-4*x).*sin(x);
axis('equal');
figure;
plot(x,y)
xlabel('x-axis')
ylabel('y-axis')

z = linspace(0, 20, 1000);
x = sin(z);
y = cos(z);
x1 = 2*sin(z);
y1 = 2*cos(z);
figure;
plot3(x,y,z,y1,x1,z)