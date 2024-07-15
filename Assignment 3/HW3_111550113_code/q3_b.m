% Given data
x = [0, 1, 2, 3];
y = [0, 0.3, 1.7, 1.5];

syms u1 u2  
eq1 = x(1)*(1-u1).^3 + x(2)*3*u1.*((1-u1).^2) + x(3)*3*(u1.^2).*(1-u1) + x(4)*(u1.^3) == x(2);
eq2 = x(1)*(1-u2).^3 + x(2)*3*u2.*((1-u2).^2) + x(3)*3*(u2.^2).*(1-u2) + x(4)*(u2.^3) == x(3);

[u1,u2] = solve([eq1,eq2],[u1,u2]);
% Display the solutions
disp(['u1 = ', char(u1)]);
disp(['u2 = ', char(u2)]);

syms y2 y3 
eq3 = y(1)*(1-u1).^3 + y2 *3*u1.*((1-u1).^2) + y3 *3*(u1.^2).*(1-u1) + y(4)*(u1.^3) == 0.3;
eq4 = y(1)*(1-u2).^3 + y2 *3*u2.*((1-u2).^2) + y3 *3*(u2.^2).*(1-u2) + y(4)*(u2.^3) == 1.7;

[y2,y3] = solve([eq3,eq4],[y2,y3]);
% Display the solutions
disp(['y2 = ', char(y2)]);
disp(['y3 = ', char(y3)]);

new_y = [0, y2, y3, 1.5];
u = linspace(0, 1, 100);
bezier_x = @(u) x(1)*(1-u).^3 + x(2)*3*u.*((1-u).^2) + x(3)*3*(u.^2).*(1-u) + x(4)*(u.^3);
bezier_y = @(u) new_y(1).*(1-u).^3 + new_y(2).*3.*u.*((1-u).^2) +  new_y(3).*3.*(u.^2).*(1-u) + new_y(4).*(u.^3);
% plot new zigzag line
plot(x, new_y, 'b--', 'LineWidth', 1); hold on;
% plot original zigzag line
plot(x, y ,'k--','LineWidth', 1); hold on;
plot(x, y, 'ro', 'MarkerSize', 8); hold on;
% plot bezier line
plot(bezier_x(u), bezier_y(u), 'r-', 'LineWidth', 1); hold on;
legend('moved zigzag','original zigzag','','bezier');


