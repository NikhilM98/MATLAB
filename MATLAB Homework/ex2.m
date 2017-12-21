% Mathematical Model
% F= m*(d2y/dt2) + b*(dy/dt) + k*y
% F(s)= m*s^2*Y(s) + b*s*Y(s) + k*Y(s)
% Y(s)/F(s)= 1/(m*s^2 + b*s + k)
% Data: mass= 1.0 kg; c-dashpot= 0.1; k-spring= 0.1;
clc
clear all
m= 1.0;
c= 0.1;
k= 0.1;
Numerator= [1];
Denominator= [m c k];
figure;
step(Numerator,Denominator)
title('Example-2')