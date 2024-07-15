% Define the function & Find interval
f = @(x) x * sin((x-2) / (x-1));
L = 0.94;
R = 0.96;
tol = 1e-5;
fprintf('interval:　[L, R] = [%.5f, %.5f]\n',L,R)

[N,M] = bisection(f, L, R, tol);
for i=1:N
    fprintf('(N=%d): mid = %.5f\n', i, M(i))
    if i==N
        fprintf('find root at around: %.5f\n', M(i))
    end
end

