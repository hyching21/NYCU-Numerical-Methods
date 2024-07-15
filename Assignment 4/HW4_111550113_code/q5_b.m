fx = @(x) exp(x); 
fy = @(y) sin(2 * y);
x_min = -0.2; x_max = 1.4; 
y_min = 0.4; y_max = 2.6;

h = 0.1;
x = x_min:h:x_max;
y = y_min:h:y_max;

int_x = 0; int_y = 0;

for i = 1:2:length(x)-2
    int_x = int_x + h/3*(fx(x(i)) + 4*fx(x(i+1)) + fx(x(i+2)));
end

for i = 1:2:length(y)-2
    int_y = int_y + h/3*(fy(y(i)) + 4*fy(y(i+1)) + fy(y(i+2)));
end

fprintf('integral_value = %.10f\n', int_x*int_y);
