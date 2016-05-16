clear;
A = [ 0 1; -2 -3 ];
B = [ 1; 0 ];
Vc = ctrb(A, B)         % ‰Â§Œäs—ñ Vc = [B AB]‚Ì“±o
rank(Vc)
det(Vc)