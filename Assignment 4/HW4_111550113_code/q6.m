f = @(x, y) (x - 1).^2 + (y.^2 / 16);
x_min = -2; x_max = 3; y_min = -1; y_max = 2;
N = 10000;

% Generate random points
x_rand = x_min + (x_max - x_min) * rand(N, 1);
y_rand = y_min + (y_max - y_min) * rand(N, 1);

f_rand = f(x_rand, y_rand);

area = (x_max - x_min) * (y_max - y_min);
integral_value = area * mean(f_rand);

fprintf('integral_value: %.10f\n', integral_value);
