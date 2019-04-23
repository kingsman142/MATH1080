function [Q, R] = gs(A)
    [m, n] = size(A);
    V = A;
    Q = zeros(m, n);
    R = zeros(n, n);
    for j = 1:n
        for i = 1:(j-1)
            R(i, j) = dot(Q(:, i), A(:, j));
            V(:, j) = V(:, j) - R(i, j) * Q(:, i);
        end
        R(j, j) = norm(V(:, j));
        Q(:, j) = V(:, j) / R(j, j);
    end
end
