clc
f= 0.085; 
v= 2.1; C0= 1.85; C= 0.925; t= 0; dt= 0.001; 
for n = 1:100000     
    X(n,:)= [C t];     
    dC= f*(C0-C)/v;     
    C= C+dt*dC;     
    t= t+dt; 
end
figure; 
plot(X(:,2),X(:,1)) 
xlabel('Time') 
ylabel('Concentration')