
x = linspace(-1, 1, 100);
f1 = @(x) 1 - (x.^2)/2 + (x.^4)/24;
f2 = @(x) 0.9999 - 0.4996*(x.^2) + 0.0413*(x.^4);
f3 = @(x) cos(x);
y1 = f1(x);
y2 = f2(x);
y3 = f3(x);
error_f1 = abs(f3(x) - f1(x));
error_f2 = abs(f3(x) - f2(x));
plot(x,error_f1,'r');
hold on;
plot(x,error_f2,'b');
hold on;
legend('Power series','Chebyshev');


% t2 = 2*x.^2-1;
% t4 = 8*x.^4-8*x.^2+1;
% t6 = 32*x.^6-48*x.^4+18*x.^2-1;
% f2 = @(x) 1 - (1/4)*(2*x.^2) + (1/192)*(3 + 4 * t2 + t4) - 1/720*(5/16 + 15/32*t2 + 3/16*t4 + 1/32*t6);