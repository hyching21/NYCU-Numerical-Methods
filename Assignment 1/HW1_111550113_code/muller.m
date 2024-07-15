% Muller's method
function [iter,root] = muller(f, x0, x1, x2, max_iter, tol)
iter = 0;
h0 = x1-x0;
h1 = x2-x1;
d0 = (f(x1)-f(x0))/ h0;
d1 = (f(x2)-f(x1))/ h1;
while iter < max_iter
    a = (d1 - d0)/(h0 + h1);
    b = a*h1 + d1;
    c = f(x2);
    disc = sqrt(b^2 - 4*a*c);
    if abs(b-disc) < abs(b+disc)
        den = b + disc;
    else 
        den = b - disc;
    end
    xr = x2 - 2*c/den;
    if abs(- 2*c/den) < tol
        root = xr;
        break;
    end

    iter = iter + 1;
    x0 = x1;
    x1 = x2;
    x2 = xr;
    h0 = x1-x0;
    h1 = x2-x1;
    d0 = (f(x1)-f(x0))/ h0;
    d1 = (f(x2)-f(x1))/ h1;
end
end
