clear;
A = [ 0 1; -2 -3 ];
B = [ 1; 0 ];
Vc = ctrb(A, B)         % ����s�� Vc = [B AB]�̓��o
rank(Vc)
det(Vc)