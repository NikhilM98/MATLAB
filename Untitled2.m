clear
clc
p=3;
g= zeros(6,6);
for i = 1:4
   g(p,i)=i;
   p = p+1;
end
g