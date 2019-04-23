function [R] = cholesky(A)
    R = triu(A);
    [m, ~] = size(A);

    if transpose(A) ~= A
        disp("Input matrix not symmetric! Exiting...");
        return
    end
    
    for k = 1:m
        if R(k, k) <= 0
            disp("Input matrix not positive definite! Exiting...");
            return
        end
        
        R(k, k:m) = R(k, k:m)/sqrt(R(k, k));
        for j = (k+1):m
            R(j, j:m) = R(j, j:m) - R(k, j:m)*R(k, j);
        end
    end
end