% h = 0.5
f = 1/6 * (1 + 8*sin(0.5) + sin(1));
fprintf('h_0.5 = %.10f\n', f);

% h = 0.25
f2 = 0.25/3 * (1 + 16*sin(0.25) + 4*sin(0.5)  + (4/0.75)*sin(0.75) + sin(1));
fprintf('h_0.25 = %.10f\n', f2);

% extrapolation
extra = f2 + (f2-f)/15;
fprintf('extrapolation = %.10f\n', extra);

% true value
f = @(x) sin(x) ./ x;
true_value = integral(f, 0, 1);
fprintf('true_value = %.10f\n', true_value);

