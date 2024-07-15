% fixed-point method 5-3.
max_iter = 40;
iter = 0;
x = -1.6;
fprintf('x0 = %.2f\n', x);

while iter < max_iter
    iter = iter + 1;
    x = log(2*x^2);
    fprintf('(iter=%.2d), x:%.5f   ', iter, x);
    if mod(iter, 4) ==0
        fprintf('\n')
    end
end