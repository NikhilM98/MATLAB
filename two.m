p = 1;
i = 1;
t = 0:0.1:20;
for rl = 0.1:0.1:1
    f(p,:)=i*exp(-1*rl*t);
    p = p + 1;
end
plot(t,f)