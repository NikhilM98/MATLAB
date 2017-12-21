% dC/dt = (f/v)*c0 - (f/v)*C
% Data: f0= 0.085 m3/min
% v= 2.1 m3
% Cinit= 0.925 kg/m3 (t <=0 )
% C0= 1.85 kg/m3 (t > 0)
clc
clear all
f= 0.085;
v= 2.1;
C0= 1.85;
C= 0.925;
t= 0;
dt= 0.001; %Cheat
for n = 1:100000 %Cheat
    X(n,:)= [C t];
    dC= f*(C0-C)/v;
    C= C+dt*dC;
    t= t+dt;
end
figure;
plot(X(:,2),X(:,1))
xlabel('Time')
ylabel('Concentration')