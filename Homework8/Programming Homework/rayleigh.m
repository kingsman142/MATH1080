function [lambda, v] = rayleigh(A, v0, mu, eps, Nmax)
    v = v0 / norm(v0);
    lambda_old = mu;
    disp("beginning lambda: ");
    disp(lambda_old);
    [m, ~] = size(A);
    for k = 1:Nmax
        w = solvesystem(A - lambda_old*eye(m), v);
        
        v = w / norm(w);
        lambda = v' * A * v;
        fprintf("lambda at iteration %d: \n", k);
        disp(lambda_old);
        fprintf("v at iteration %d: \n", k);
        disp(v);
        if abs(lambda - lambda_old) < eps
            fprintf("Success: Exiting after %d iterations\n", k);
            return;
        end
        lambda_old = lambda;
    end
    disp("Error: maximum number of iterations reached! Returning currently computed values...")
end

function [x] = solvesystem(A, b)
    x = A \ b;
end