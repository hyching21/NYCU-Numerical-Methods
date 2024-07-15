% Bisection method

function [N,M] = bisection(f, L, R, tol)
N = 0;
M = [];
while abs(L-R) > tol
    N = N+1;
    mid = (L+R)/2;
    if(f(mid)==0)
       M(N) = mid; 
       break;
    elseif (f(L)*f(mid)<0)
        R = mid;
    elseif (f(R)*f(mid)<0)
        L = mid;
    end
    M(N) = mid;
end
end

