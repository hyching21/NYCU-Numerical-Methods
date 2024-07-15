fx = @(x) exp(x); 
fy = @(y) sin(2 * y);
x_min = -0.2; x_max = 1.4; 
y_min = 0.4; y_max = 2.6;

h = 0.1;
x = x_min:h:x_max;
y = y_min:h:y_max;

int_x = 0; int_y = 0;

for i = 1:length(x)
    if i == 1 || i == length(x)
        int_x = int_x + (h/2) * (fx(x(i)));
    else 
        int_x = int_x + (h/2) * (2*fx(x(i)));
    end
end
for i = 1:length(y)
    if i == 1 || i == length(y)
        int_y = int_y + (h/2) * (fy(y(i)));
    else 
        int_y = int_y + (h/2) * (2*fy(y(i)));
    end
end
fprintf('integral_value = %.10f\n', int_x*int_y);