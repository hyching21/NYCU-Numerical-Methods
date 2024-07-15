% Secant method

function [N,X] = secant(f, x0, x1, tol)
N = 0;
X = [];

while abs(x1-x0) > tol
    N = N+1;
    if abs(f(x0)) < abs(f(x1))
    tmp = x0;
    x0 = x1;
    x1 = tmp;
    end
    x2 = x1-f(x1)*(x0-x1)/(f(x0)-f(x1));
    x0 = x1;
    x1 = x2;
    X(N) = x2;   
end
end



