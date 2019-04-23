function [lambda, v] = poweriter(A, v0, eps, Nmax)
    v = v0 / norm(v0);
    lambda_old = v' * A * v;
    disp("beginning lambda: ");
    disp(lambda_old);
    for k = 1:Nmax
        v = A * v;
        v = v / norm(v);
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