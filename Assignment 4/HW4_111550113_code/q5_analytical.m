func = @(x,y) exp(x).*sin(2.*y);
q = integral2(func,-0.2,1.4,0.4,2.6);
fprintf('analytical_value = %.10f\n', q);