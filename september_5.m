clc
clear all
n = 10000.0;
r = 100.0;
points = 100.0;
crpts = 0.0;
for i = 1:n
    x = randi(points);
    y = randi(points);
    if x^2 + y^2 - r^2 < 0
        crpts = crpts + 1.0;
    end
end
thepi = (crpts/n)*4
relativeerr = (pi-thepi)/pi *100

clc
clear

n = 10.0 : 10000;
r = 100.0;
lth = 100.0;
crpts = 0.0;
for j = 1:length(n)
    crpts = 0;
    for i = 1:n(j)
        x = randi(lth);
        y = randi(lth);
        if x^2 + y^2 - r^2 < 0
            crpts = crpts + 1.0;
        end
        thepi = (crpts/n(j))*4;
        relativeerr(j) = (pi-thepi)/pi *100;
    end
end
plot(n, relativeerr, '.')