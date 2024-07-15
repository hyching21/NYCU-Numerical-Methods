fx = @(t) exp(0.8*t+0.6); 
fy = @(t) sin(2.2*t+3);

t1=-sqrt(3/5); t2=0; t3=sqrt(3/5);
w1=5/9; w2=8/9; w3=5/9;

int_x = 0.8*(w1*fx(t1) + w2*fx(t2) + w3*fx(t3));
int_y = 1.1*(w1*fy(t1) + w2*fy(t2) + w3*fy(t3));

fprintf('integral_value = %.10f\n', int_x*int_y);

