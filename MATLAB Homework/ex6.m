%[ddy1; ddy2]=[F1/M1; F2/M2]-[B/M1 -B/M1;-B/M2 B/M2]*[dy1; dy2]-[]*[K/M1
%-K/M1;-K/M2 K/M2]*[y1; y2]
clc
clear all
F1=1;
F2=-1;
M1=1;
M2=1.5;
B=0.1;
K=0.2;
Coef_1= [B/M1 -B/M1;-B/M2 B/M2];
Coef_2=[K/M1 -K/M1;-K/M2 K/M2];
Y=[0.1; 0.1];
dY=[0; 0];
dt=0.1;
t=0;
T=200;
n=round(T-t)/dt;
for i=1:n
        X1(i,:)=[Y' dY' t];
    ddY=[F1/M1;F2/M2] - Coef_1*dY - Coef_2*Y;
    dY=dY+dt*ddY;
    Y=Y+dt*dY;
    t=t+dt;
end
figure;
subplot(2,1,1)
plot(X1(:,5),X1(:,1:2))
xlabel('Time (seconds)')
ylabel('Displacement')
subplot(2,1,2)
plot(X1(:,5),X1(:,3:4))
xlabel('Time (seconds)')
ylabel('Velocities')