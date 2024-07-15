clear;
p = @(x) ((x-2)^3) * (x-4)^2;
L = 1.5;
R = 3;
tol = 1e-5;
fprintf('interval:　[L, R] = [%.5f, %.5f]\n',L,R)
max_iter = 50;

fprintf('bisection:\n')
[N,M] = bisection(p, L, R, tol);
for i=1:N
    fprintf('(N=%d): mid = %.5f\n', i, M(i))
    if i==N
        fprintf('find root at around: %.5f\n', M(i))
    elseif i>= max_iter
        fprintf('over\n')
        break
    end
end

fprintf('secant:\n')
[N,X] = secant(p, L, R, tol);
for i=1:N
    fprintf('(N=%d): x%d = %.5f\n', i,i+1, X(i))
    if i==N
        fprintf('find root at around: %.5f\n', X(i))
    end
end

fprintf('false_position:\n')
[N,X] = false_position(p, L, R, tol);
for i=1:N
    fprintf('(N=%d): x%d = %.5f\n', i,i+1, X(i))
    if i==N
        fprintf('find root at around: %.5f\n', X(i))
    end
end