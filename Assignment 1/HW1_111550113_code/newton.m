% newton method
function [N,X] = newton(f, df, x0 , tol)
N = 0;
X = [];
while( abs(f(x0)) > tol)
    N = N+1;
    x1 = x0 - f(x0)/df(x0);
    x0 = x1;
    X(N) = x0;
end

