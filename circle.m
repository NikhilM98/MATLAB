% Circle
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