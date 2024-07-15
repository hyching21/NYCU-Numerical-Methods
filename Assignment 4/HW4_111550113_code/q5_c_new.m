fx = @(x) exp(x); 
fy = @(y) sin(2*y);

t1=-sqrt(3/5); t2=0; t3=sqrt(3/5);
w1=5/9; w2=8/9; w3=5/9;

x_a=-0.2; x_b=1.4;
y_a=0.4; y_b=2.6;
h = 0.1;

x_n = (x_b-x_a)/h+1;
y_n = (y_b-y_a)/h+1;
x_points = linspace(x_a,x_b,x_n);
y_points = linspace(y_a,y_b,y_n);
int_x = 0; int_y = 0;

for i = 1:x_n-1
    a = x_points(i);
    b = a + h;
    tmp = (b-a)/2*(w1*fx(((b-a)*t1+a+b)/2)+w2*fx(((b-a)*t2+a+b)/2)+w3*fx(((b-a)*t3+a+b)/2));
    int_x = int_x + tmp;
end    
for i = 1:y_n-1
    a = y_points(i);
    b = a + h;
    tmp = (b-a)/2*(w1*fy(((b-a)*t1+a+b)/2)+w2*fy(((b-a)*t2+a+b)/2)+w3*fy(((b-a)*t3+a+b)/2));
    int_y = int_y + tmp;
end 
fprintf('integral_value = %.10f\n', int_x*int_y);
