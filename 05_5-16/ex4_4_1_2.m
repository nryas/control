% ‹³‰È‘p.86 4.4.1
clear;
A = [ 0 1 1; -2 -3 1; 1 0 0];
B = [ 0 1; 1 0; 0 0 ];
Vc = ctrb(A, B)         % ‰Â§Œäs—ñ Vc = [B AB]‚Ì“±o
rank(Vc)