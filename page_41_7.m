% Page 41 Ans 7
clc;
clear all;
x = linspace(0, 2*pi, 1000);
y = cos(x);
z = 1 - (x.^2)/2 + (x.^4)/24;
plot(x,y,x,z);
