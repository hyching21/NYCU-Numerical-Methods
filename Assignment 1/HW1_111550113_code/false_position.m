% false position method

function [N,X] = false_position(f, x0, x1, tol)
N = 1;
X = [];
x2 = x1-f(x1)*(x0-x1)/(f(x0)-f(x1));
X(N) = x2;
if f(x0)*f(x2)<0
    x1 = x2;
else
    x0 = x2;
end

while abs(f(x2)) > tol
    N = N+1;
    if f(x0)*f(x2)<0
        x1 = x2;
    else
        x0 = x2;
    end
    X(N) = x2;
    x2 = x1-f(x1)*(x0-x1)/(f(x0)-f(x1));
end
end

