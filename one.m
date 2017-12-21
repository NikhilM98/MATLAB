p = 1
rl = 1;
t = 0:0.1:20;
for i = 0.1:0.1:1
    f(p,:)=i*exp(-1*rl*t);
    p = p + 1;
end
plot(t,f)