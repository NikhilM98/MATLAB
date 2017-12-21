% Rotational Mechanical Systems
% Mathematical Model for a Rigid Mechanical Disk
% d([dtheta theta])/dt = [-b/I -k/I;1 0]*[dtheta theta] + [1/I;0]*T
clc
clear all
T=0.25;
I=0.5;
b=0.5;
k=0.1;
A=[-b/I -k/I;1 0];
B=[1/I;0];
X =[0; 0.1];
dt=0.1;
t=0;
T=200; 
n=round(T-t)/dt;
for i=1:n
    X1(i,:)=[X' t];
    dX=A*X+B*T;
    X=X+dt*dX;
    t=t+dt;
end
figure;
subplot(2,1,1)
plot(X1(:,3),X1(:,1))
xlabel('Time (seconds)')
ylabel('Angle')
axis([0 40 0 400])
subplot(2,1,2)
plot(X1(:,3),X1(:,2))
xlabel('Time (seconds)')
ylabel('Angular velocity')
axis([0 40 0 2000])