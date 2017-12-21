clc
clear all
n = 1000.0;
r = 100.0;
crpts = 0.0;
for i = 1:n
    x = randi(r);
    y = randi(r);
    z = randi(r);
    if x^2 + y^2 + z^2 - r^2 < 0
        crpts = crpts + 1.0;
    end
end
volu = (crpts/n)*3*2*(4/3*r^3)
relativeerr = ((4/3)*pi*r^3-(volu))/volu *100

clc
clear all
n = 100.0 : 2000;
r = 100.0;
crpts = 0.0;
for j = 1:length(n)
    crpts = 0;
    revl = (4/3*r^3);
    for i = 1:n(j)
        x = randi(r);
        y = randi(r);
        z = randi(r);
        if x^2 + y^2 + z^2 - r^2 < 0
            crpts = crpts + 1.0;
        end
        volu = (crpts/n(j))*3*2*revl;
        relativeerr(j) = (revl-(volu))/revl*100;
    end
end
figure;
limx[0 :
plot(n, relativeerr, '.')