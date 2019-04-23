Z = [1 2 3; 4 5 6; 7 8 7; 4 2 3; 4 2 2];
A = [1 1+10^(-4) 1+2*10^(-4); 1 1 1+10^(-4); 1 1 1];
B = [1 1+10^(-10) 1+2*10^(-10); 1 1 1+10^(-10); 1 1 1];

for i = 1:3
    if i == 1
        matrix = Z;
    elseif i == 2
        matrix = A;
    elseif i == 3
        matrix = B;
    end
    [Q1, R1] = gs(matrix);
    [Q2, R2] = mgs(matrix);
    [Q3, R3] = house(matrix);
    [Q4, R4] = qr(matrix);
    
    [m, n] = size(matrix);
    
    E1 = (Q1' * Q1) - eye(n);
    E2 = (Q2' * Q2) - eye(n);
    E3 = (Q3' * Q3) - eye(m);
    E4 = (Q4' * Q4) - eye(m);

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
    disp("Q (house) = ");
    disp(Q3);
    disp("R (house) = ");
    disp(R3);
    disp("E (house) = ");
    disp(E3);
    disp("Q (qr) = ");
    disp(Q4);
    disp("R (qr) = ");
    disp(R4);
    disp("E (qr) = ");
    disp(E4);
end