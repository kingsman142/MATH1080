function [Q,H] = hessenberg(A)
    [m, ~] = size(A);
    Q = zeros(m, m);
    for k = 1:(m-2)
        x = A((k+1):m, k);
        v = x;
        v(1) = sign(x(1))*norm(x) + v(1);
        v = v / norm(v);
        A((k+1):m, k:m) = A((k+1):m, k:m) - 2*v*(v'*A((k+1):m, k:m));
        A(:, (k+1):m) = A(:, (k+1):m) - 2*(A(:, (k+1):m)*v)*v';
        Q((k+1):m, k) = v;
    end
    H = A;
end