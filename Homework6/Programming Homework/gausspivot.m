function [L,U,P] = gausspivot(A)
    m = length(A);
    L = eye(m);
    P = eye(m);
    for k = 1:(m-1)
        % Find row to pivot with
        [~, i] = max(abs(A(k:m, k)));
        i = i+k-1;
        
        % Perform pivot swaps
        A([k i], k:m) = A([i k], k:m);
        P([k i],:) = P([i k],:);
        if k-1 > 0
            L([k i],[1 k-1]) = L([i k],[1 k-1]);
        end
        
        % Calculate L_k and A_k
        for j = (k+1):m
            L(j,k) = A(j,k)/A(k,k);
            A(j,k:m) = A(j,k:m) - L(j,k)*A(k,k:m);
        end
    end
    U = A;
end
