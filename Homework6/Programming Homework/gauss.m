function [L,U] = gauss(A)
    m = length(A);
    L = eye(m);
    
    for k = 1:(m-1)
        for j = (k+1):m
            L(j,k) = A(j,k) / A(k,k);
            A(j,k:m) = A(j,k:m) - L(j,k)*A(k,k:m);
        end
    end
    U = A;
end
