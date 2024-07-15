% Define the function & Find interval
f = @(x) x * sin((x-2) / (x-1));
L = 0.94;
R = 0.95;
tol = 1e-5;
fprintf('interval:　[L, R] = [%.5f, %.5f]\n',L,R)

[N,X] = secant(f, L, R, tol);
for i=1:N
    fprintf('(N=%d): x%d = %.5f\n', i,i+1, X(i))
    if i==N
        fprintf('find root at around: %.5f\n', X(i))
    end
end