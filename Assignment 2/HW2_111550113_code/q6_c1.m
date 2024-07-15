A = [2,-1.99; -1.99,2];
b = [0;0];
% initial x vector
start_v = {[1; 1], [1; -1], [-1; 1], [2; 5], [5; 2]};
% get D,L,U
D = diag(diag(A));
L = tril(A,-1);
U = triu(A,1);

max_iter = 1000000;
tol = 1e-5;
disp('Jacobi method:');

for i = 1:5
    x = start_v{i};
    fprintf('starting vector = [%d %d]\n',x(1),x(2));
    for iter = 1:max_iter
        % D \ B computes the solution to Dx=B
        % Dx = -(L+U)x + b
        new_x = D \ (-(L+U)*x + b);
        % fprintf('iter %d: x = %s %s\n',iter,num2str(new_x(1)),num2str(new_x(2)));
        % check convergence
        % used for finding the limit:
        new_x = round(new_x, 5,'significant');
        x = round(x, 5,'significant');
        if new_x==x
            disp(['Converged at iteration #', num2str(iter)]);
            break
        end
        % used for iter 10:
        % if norm(A*new_x - b) < tol
        %     x = new_x;
        %     disp(['Converged at iteration #', num2str(iter)]);
        %     break;
        % end
        x = new_x;
    end
    fprintf('iter %d: x = %s %s\n',iter,num2str(new_x(1)),num2str(new_x(2)));
end