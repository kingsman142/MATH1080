power = -2;
eps = 10^(power);
n = 3;
A = [1 1+eps 1+2*eps ; 1 1 1+eps ; 1 1 1];

[Q1, R1] = gs(A);
[Q2, R2] = mgs(A);

E1 = Q1' * Q1 - eye(n);
E2 = Q2' * Q2 - eye(n);

disp("Q (gs) = ");
disp(Q1);
disp("R (gs) = ");
disp(R1);
disp("E (gs) = ");
disp(E1);
disp("Q (mgs) = ");
disp(Q2);
disp("R (mgs) = ");
disp(R2);
disp("E (mgs) = ");
disp(E2);