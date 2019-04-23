A = [-8 -9 7 19 3; 9 10 9 1 -16; 7 2 -8 -2 3; 19 8 -18 -8 -3; 15 10 16 -16 -18];

[L1, U1] = gauss(A);
[L2, U2, P2] = gausspivot(A);

eps1 = norm(L1*U1 - A) / norm(A);
eps2 = norm((P2)*L2*U2 - A) / norm(A);

disp("L1:");
disp(L1);
disp("U1:");
disp(U1);
disp("Gauss (non-pivot) relative accuracy: ")
disp(eps1)
disp("L2:");
disp(L2);
disp("U2:");
disp(U2);
disp("P2:");
disp(P2);
disp("Gauss (partial pivot) relative accuracy: ")
disp(eps2)