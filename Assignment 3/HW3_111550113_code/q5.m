x = [0.40 1.2 3.4 4.1 5.7 7.2 9.3];
y = [0.70 2.1 4.0 4.9 6.3 8.1 8.9];
z = [0.031 0.933 3.058 3.349 4.870 5.757 8.921];

n = length(x');
A = [x' y' ones(n,1)];
b = z';

% A^TAa = A^Tb, a is the coefficient that we want
coef = (A'*A) \ (A'*b);
disp('A');
disp(A);
disp('b');
disp(b);
disp('A^TAa = A^Tb, a is the coefficient that we want')
disp('A^TA:')
disp(A'*A)
disp('A^Tb:')
disp(A'*b)
disp('a:')
disp(coef')

% Aa = b
x = A * coef;
r = A * coef - b;
e = r.^2;
disp(['sum of the squares of the deviations: ' num2str(sum(e))])

