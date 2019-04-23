function [Q,L] = qralgshift(A,eps)
    m = length(A);
    RR = eye(m);
    QQ = eye(m);
    k = 0;
    D = 1;
    while D > eps
        [Q, R] = qr(A);
        A = R*Q;
        QQ = QQ*Q;
        RR = R*RR;
        D = norm(A - diag(diag(A)));
        k = k+1;
    end
    Q = QQ;
    L = A;
    disp(k);
end
