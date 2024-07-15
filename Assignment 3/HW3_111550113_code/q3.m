x = [0, 1, 2, 3];
y = [0, 0.3, 1.7, 1.5];
plot(x, y, 'b-', 'LineWidth', 1);
hold on;
plot(x, y, 'ro', 'MarkerSize', 8);
hold on;


u = linspace(0, 1, 100);
bezier_x = @(u) x(1).*(1-u).^3 + x(2).*3.*u.*((1-u).^2) +  x(3).*3.*(u.^2).*(1-u) + x(4).*(u.^3);
bezier_y = @(u) y(1).*(1-u).^3 + y(2).*3.*u.*((1-u).^2) +  y(3).*3.*(u.^2).*(1-u) + y(4).*(u.^3);

plot(bezier_x(u), bezier_y(u), 'r--', 'LineWidth', 1);



