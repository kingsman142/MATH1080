function [Q, A] = house(A)
    [m, n] = size(A);
    Q = eye(m); % the Q matrix in QR Factorization
    I = eye(m); % Identity matrix to get basis vectors later on
    for k = 1:n
        % Calculate the kth column of R with Householder
        e1 = I(1:(m-k+1), 1); % basis vector
        x = A(k:m, k);
        v = sign(x(1, :))*norm(x)*e1 + x;
        v = v / norm(v); % normalize vector
        A(k:m, k:n) = A(k:m, k:n) - 2*v*(v'*A(k:m, k:n)); % treat A like our R
        Q(k:m, :) = Q(k:m, :) - 2*v*(v'*Q(k:m, :));
    end
    
    A(isnan(A)) = 0; % clean the matrix and replace all NaNs with 0s
    Q(isnan(Q)) = 0; % clean the matrix and replace all NaNs with 0s
    Q = Q'; % must return the transpose of Q
end