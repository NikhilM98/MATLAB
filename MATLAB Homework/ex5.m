% Modeling of Train System
% State-Space Model
% d([X1; V1; X2; V2])/dt = [0 1 0 0; -k/m1 -u*g -k/m1 0; 0 0 0 1; k/m2 0
% -k/m2 -u*g]*[X1; V1; X2; V2] + [0; 1/m1; 0; 0]*f(t)
clc
clear all;
k=35;
m1=1800;
m2=1000;
u=0.05; 
g=9.81; 
F=100;
A=[0 1 0 0; -k/m1 -u*g -k/m1 0; 0 0 0 1; k/m2 0 -k/m2 -u*g];
B=[0; 1/m1; 0; 0];
X=[0 0 0 0]';
t=0;
tsim=3;
dt=0.02;
n=round((tsim-t)/dt);
for i=1:n
     X1(i,:)=[t X'];
     dvdx=A*X+B*F;
     X=X+dt*dvdx ;
     t=t+dt;
end
figure;
plot(X1(:,1),X1(:,2:5))
xlabel('x(m)')
ylabel('state variable')