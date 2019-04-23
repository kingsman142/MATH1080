A = [10 3 -1 -3 -9; 3 6 -5 -3 -1; -1 -5 9 2 -1; -3 -3 2 2 2; -9 -1 -1 2 9];

R = cholesky(A);
[L, U, P] = gausspivot(A);

Delta1 = norm(L*U - P*A)/norm(A);
Delta2 = norm(R'*R - A)/norm(A);

disp("Gauss Pivot Relative Accuracy:")
disp(Delta1)

disp("Cholesky Relative Accuracy:")
disp(Delta2)
