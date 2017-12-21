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

clc;
clear all;
x = linspace(0, 4*pi, 100);
y = exp(-4*x).*sin(x);
axis('equal');
figure;
plot(x,y)
xlabel('x-axis')
ylabel('y-axis')