clc
clear
% Problem 1
disp(['The solution of Problem 1 is:'])
A = [2 6; 3 9]
B = [1 2; 3 4]
C = [-5 5; 5 3]

% Problem 2
disp(['Problem 2'])
% Part 1
disp(['Part 1'])
D = A + B
E = B + A

if (D==E)
    commutable = true
    disp(['Commutable'])
else
    commutable = false
end
% Part 2 
D = (A + B);
D = D + C
E = (B + C);
E = E + A

if (D==E)
    associative = true
    disp(['Associative'])
else
    associative = false
end

% Part 3
alpha = 5
D = alpha*( A + B )
E = alpha*A + alpha*B

if (D==E)
    same = true
    disp([' Same'])
else
    same = false
end

% Part 4
D = ( B + C );
D = D*A
E = A*B + A*C

if (D==E)
    commutable = true
else
    commutable = false
end

% Part 5
A
B
C
AB = A*B
AC = A*C 
BA = B*A


% Problem 3
D = zeros(2,3)
E = 5*eye(3,3)
F = 3*ones(2,2)

% Problem 4
G(1:2, 1:2) = A;
G(3:4, 3:4) = B;
G(5:6, 5:6) = C


% Problem 5
G(6,:) = [];
G(:,6) = []
H = G(1:4,1:4)
G(5,5) = 4
G(13)
G(12,1) = 1
