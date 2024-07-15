A = [3,1,-4; -2,3,1; 2,0,5];
b = [7; -5; 10];

aug = [A b];
n = length(b);
% gaussian elimination with partial pivoting
for k = 1:n-1
    % partial pivoting
    [~, pivot] = max(abs(aug(k:n,k)));
    pivot = pivot + k - 1; % from sub index to global index
    if pivot ~= k
        aug([k pivot],:) = aug([pivot k],:); % swap two rows 
    end
    for i = k+1:n
        factor = aug(i,k)/aug(k,k);
        aug(i,k:n+1) = aug(i,k:n+1) - factor * aug(k,k:n+1);
    end
end

% Back substitution
x = zeros(n,1);
x(n) = aug(n,n+1) / aug(n,n);
for i = n-1:-1:1
    x(i) = (aug(i,n+1) - aug(i,i+1:n) * x(i+1:n)) / aug(i,i);
end
disp(x')
