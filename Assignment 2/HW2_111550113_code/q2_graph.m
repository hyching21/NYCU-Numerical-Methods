% plot the lines
a1 = 0.1;
b1 = 51.7;
c1 = 104;

a2 = 5.1;
b2 = -7.3;
c2 = 16;

x = linspace(-100,100,100);
y1 = (-a1/b1)*x + (c1/b1);
y2 = (-a2/b2)*x + (c2/b2);

plot(x,y1,'b',x,y2,'r');
hold on;
xlabel('x');
ylabel('y');
plot(6, 2, 'kx', 'MarkerSize', 10);

% find intersection
A = [0.1 51.7; 5.1 -7.3];
b = [104; 16];
intersection = linsolve(A, b);
fprintf('Intersection point: (%f, %f)\n', intersection(1), intersection(2));