x0 = linspace(-1,-0.5);
x1 = linspace(-0.5,0);
x2 = linspace(0,0.5);
x3 = linspace(0.5,1);

% condition 3
g0 = @(x) 4*(x+1).^2 - 2*(x+1);
g1 = @(x) -8*(x+0.5).^3 + 4*(x+0.5).^2 + 2*(x+0.5);
g2 = @(x) 8*x.^3 - 8*x.^2 + 1;
g3 = @(x) 4*(x-0.5).^2 - 2*(x-0.5);

plot(x0,g0(x0),'r',x1,g1(x1),'r',x2,g2(x2),'r',x3,g3(x3),'r');
hold on;

% original
x = linspace(-1, 1, 1000);
f = @(x) (x >= -1 & x < -0.5).*0 + (x >= -0.5 & x < 0.5).*(1 - abs(2*x)) + (x >= 0.5 & x <= 1).*0;
plot(x, f(x), 'b');
hold on;

% condition 4
x = linspace(-1, 1, 5);
y = f(x);
xx = linspace(-1, 1, 1000);
plot(xx,spline(x,y,xx),'k-',x,y,'ro')
hold on;
legend('condition 3','','','','original', 'condition 4');
plot(xx,spline(x,[1/2 y -1/2],xx),'g--',x,y,'ro')