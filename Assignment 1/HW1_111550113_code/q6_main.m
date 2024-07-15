% Define function
f = @(x) x^2 + cos(x)^4 - x -2;
df = @(x) 2*x - 4*cos(x)^3*sin(x)-1;
tol = 1e-5;
x0 = -1;
fprintf('x0 = %.5f\n', x0)
[N,X] = newton(f, df, x0 , tol);
for i=1:N
    fprintf('(N=%d): x = %.5f\n', i, X(i))
    if i==N
        fprintf('find root at around: %.5f\n', X(i))
        fprintf('ANS: x=%.5f, y=%.5f\n', X(i),cos(X(i))^2)
    end
end
