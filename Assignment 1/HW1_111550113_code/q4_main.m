clear;
f1 = @(x) 4*x^3 - 3*x^2 + 2*x -1; % root near x = 0.6
f2 = @(x) x^2 + exp(x) - 5; % root near x = 1, x = -2

max_iter = 100;
tol = 1e-5;
x0 = 0.3;
x1 = 0.5;
x2 = 0.8;

% x0 = 0.5;
% x1 = 1.1;
% x2 = 1.5;

% x0 = -2.5;
% x1 = -1.5;
% x2 = -1;

[iter_f1,root_f1] = muller(f1, x0, x1, x2, max_iter, tol);
fprintf('iter: %d, root: %.5f\n', iter_f1, root_f1)

[iter_f2,root_f2] = muller(f2, x3, x4, x5, max_iter, tol);
fprintf('iter: %d, root: %.5f\n', iter_f2, root_f2)