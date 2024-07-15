% fixed-point method
max_iter = 40;
iter = 0;
x = 1;
fprintf('x0 = %.2f\n', x);

while iter < max_iter
    iter = iter + 1;
    x = sqrt(exp(x)/2);
    fprintf('(iter=%.2d), x:%.5f   ', iter, x);
    if mod(iter, 4) ==0
        fprintf('\n')
    end
end

% for second root -1.5
max_iter = 16;
iter = 0;
x = -1;
fprintf('x0 = %.2f\n', x);
while iter < max_iter
    iter = iter + 1;
    x = -sqrt(exp(x)/2);   fprintf('(iter=%.2d), x:%.5f   ', iter, x);
    if mod(iter, 4) ==0
        fprintf('\n')
    end
end