clear
format compact

A = [ -3 1; 2 -2 ];
B = [ 2; 0 ];

syms lambda k1 k2 p1 p2         % 変数λ,k1,k2,p1,p2の定義
K = [k1 k2];                    % 状態フィードバックゲインkの定義
Acl = A + B*K;

eq1  = det(lambda*eye(2) - Acl);	% 特性多項式 |λI - A|
eq1  = collect(eq1, lambda)
coe1 = coeffs(eq1, lambda)
eq2  = (lambda - p1) * (lambda - p2);
eq2  = collect(eq2, lambda)
coe2 = coeffs(eq2, lambda)

[k1 k2] = solve(coe1(1)-coe2(1), coe1(2)-coe2(2), 'k1, k2')
K = subs([k1 k2], {p1, p2}, {-8+4j,-8-4j})
eig(A + B*K)