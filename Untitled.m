x =linspace(0,2*pi,100);
y1=sin(x);
hold on
plot(x,y1) 
y2=x;
plot(x,y2,'--') 
y3 = x-(x.^3)/6 + (x.^5)/120; 
plot(x,y3,'o') 
axis([0 5 -1 5])
hold off
legend('first','second','third')
line(x,x+1)
