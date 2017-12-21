clc
clear
x = randi(10, 1, 10)
[sorted, index] = sort(x)


% Sort a matrix by rows
y = randi (10, 10)
[sorted, index] = sort(y,2)
% Sort a matrix by columns
[sorted, index] = sort(y,1)