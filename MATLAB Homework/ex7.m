% Mathematical Model of Mechanical System
% [ddy1; ddy2; ddy3] = [K1*Y/M1 0 F/M3] - [0 0 0;0 B/M2 -B/M2;0 -B/M3
% B/M3]*[dy1; dy2; dy3] - [(K1+K2)/M1 -K2/M1  0;-K2/M2 (K2+K3)/M2 -K3/M2;0
% -K3/M3 K3/M3]*[y1; y2; y3]
clc
clear all
F=0.25;
y=-0.5;
M1=0.5;
M2=1.0;
M3=0.5;
B=0.5;
K1=0.1;
K2=0.15;
K3=0.05;
Coef_1=[0 0 0;0 B/M2 -B/M2;0 -B/M3 B/M3];
Coef_2=[(K1+K2)/M1 -K2/M1  0;-K2/M2 (K2+K3)/M2 -K3/M2;0 -K3/M3 K3/M3];
Y=[0.1; 0.1; 0.05];
dY=[0; 0;0];
dt=0.1;
t=0;
T=200;
n=round(T-t)/dt;
for i=1:n
     X1(i,:)=[Y' dY' t];
    ddY=[K1*y/M1;0 ;F/M3] - Coef_1*dY - Coef_2*Y;
    dY=dY+dt*ddY;
    Y=Y+dt*dY;
    t=t+dt;
end
figure;
plot(X1(:,7),X1(:,1:3))
xlabel('Time (second)')
ylabel('Displacement')