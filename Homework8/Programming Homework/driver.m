A = [2 6 4 -4 -5 10; 6 12 -2 9 5 9; 4 -2 0 -1 -3 14; -4 9 -1 10 -6 8; -5 5 -3 -6 2 8; 10 9 14 8 8 0];
[m, ~] = size(A);

v0 = rand(m, 1);
eps = 10e-6;
Nmax = 10000;
[lambda, v] = poweriter(A, v0, eps, Nmax);

eps = 10e-10;
[lambda2, v2] = poweriter(A, v0, eps, Nmax);

eps = 10e-10;
mu = 1;
[lambda3, v3] = inverseiter(A, v0, mu, eps, Nmax);
disp(lambda3);

eps = 10e-10;
mu = 1024;
[lambda4, v4] = inverseiter(A, v0, mu, eps, Nmax);
disp(lambda4);

eps = 10e-10;
mu = 1;
[lambda5, v5] = rayleigh(A, v0, mu, eps, Nmax);
disp(lambda5);

eps = 10e-10;
mu = 1024;
[lambda6, v6] = rayleigh(A, v0, mu, eps, Nmax);
disp(lambda6);