A = [2 6 4 -4 -5 10; 6 12 -2 9 5 9; 4 -2 0 -1 -3 14; -4 9 -1 10 -6 8; -5 5 -3 -6 2 8; 10 9 14 8 8 0];

[Q, L] = qralgshift(A, 1e-6);
disp("QR Shift without Hessenberg form:");
disp("Q:");
disp(Q);
disp("L:");
disp(L);

[Q1, H] = hessenberg(A);
[Q2, L2] = qralgshift(H, 10e-6);
disp("QR Shift with Hessenberg form:");
disp("Q:");
disp(Q2);
disp("L:");
disp(L2);

