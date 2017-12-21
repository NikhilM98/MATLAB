% State Model for the Mechanical System
% d([X1;X2;X3;X4])/dt= [0 1 0 0; -k1/m1 -b1/m1 k1/m1 b1/m1;0 0 0 1;k1/m2
% b1/m2 -(k1+k2)/m2 -(b1+b2)/m1]*[X1;X2;X3;X4]+[0 1/m1 0 0]*f(t)
% Data: k1=5; k2=7; m1=2; m2=3; b1=40; b2=30;
clc
clear all
k1=5; 
k2=7; 
m1=2; 
m2=3; 
b1=40; 
b2=30;
t= 0;
dt= 0.01;
T= 10.0;
n= round((T-t)/dt);
A= [0 1 0 0; -k1/m1 -b1/m1 k1/m1 b1/m1; 0 0 0 1; k1/m2 b1/m2 -(k1+k2)/m2 -(b1+b2)/m2];
B= [0; 1/m1; 0; 0];
X= [0 0 0 0]';
f= 5;
for i=1:n
    dx=A*X+B*f;
    X=X+dx*dt;
    X1(i,:)=[t,X'];
    t=t+dt;
end

figure;
subplot(2,2,1)
plot(X1(:,1),X1(:,2))
axis([0 10 0 2])
xlabel('time')
ylabel('X1')
title('Response of state variable X1')

subplot(2,2,2)
plot(X1(:,1),X1(:,3))
axis([0 10 0 1])
xlabel('time')
ylabel('X2')
title('Response of state variable X2')

subplot(2,2,3)
plot(X1(:,1),X1(:,4))
axis([0 10 0 2])
xlabel('time')
ylabel('X3')
title('Response of state variable X3')

subplot(2,2,4)
plot(X1(:,1),X1(:,5))
axis([0 10 0 1])
xlabel('time')
ylabel('X4')
title('Response of state variable X4')
