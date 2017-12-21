 % State-Space Model
 % [ddy1; ddy2]= [0; F/m2] - [B/m1 -B/m1; -B/m2 B/m2]*[dy1 dy2] -
 % [(k1+k1)/m1 -k2/m1; -k2/m2 k2/m2]*[y1; y2]
 
 clc
 clear all
 F= 1;
 m1= 1;
 m2=1.5;
 B=0.1;
 k1=0.2;
 k2=0.15;
 Coef_1=[B/m1 -B/m1; -B/m2 B/m2];
 Coef_2=[(k1+k2)/m1 -k1/m1; -k2/m2 k2/m2];
 Y=[0.1; 0.1];
 dY=[0; 0];
 dt=0.1;
 t=0;
 T=200;
 n=round(T-t)/dt;
 for i=1:n
     X1(i,:)=[Y' dY' t];
     ddY=[0;F/m2] - Coef_1*dY - Coef_2*Y;
     dY=dY+dt*ddY;
     Y=Y+dt*dY;
     t=t+dt;
 end
 figure;
 subplot(2,1,1)
 plot(X1(:,5),X1(:,1:2))
 xlabel('Time (seconds)')
 ylabel('Displacements')
 
 subplot(2,1,2)
 plot(X1(:,5),X1(:,3:4) )
 xlabel('Time (seconds)')
 ylabel('Velocity')