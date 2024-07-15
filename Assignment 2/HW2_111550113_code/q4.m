A = [7,-3,4; 2,5,3 ;-3,2,6];
b = [6; -5; 2];
% initial x vector
x = [0; 0; 0];
% get D,L,U
D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

max_iter = 50;
tol = 1e-5;
for iter = 1:max_iter
    % D \ B computes the solution to Dx=B
    % Dx = -(L+U)x + b
    new_x = D \ (-(L+U)*x + b);
    % check convergence
    if norm(new_x - x,inf) < tol
        x = new_x;
        disp(['Converged at iteration #', num2str(iter)]);
        break;    
    end
    x = new_x;
end

disp('Jacobi method:');
disp(num2str(x'));
