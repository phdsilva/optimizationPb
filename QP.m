clear all
clc
%https://ncss-wpengine.netdna-ssl.com/wp-content/themes/ncss/pdf/Procedures/NCSS/Quadratic_Programming.pdf

n = 3;
P = 2*[1 0 1 ; 0 2 0 ; 0 0 3];
q = [1 ; -2 ; 4];
r = 0;
A = [3;4;-2];
B = [-3;2;1];
C = [2;3;4];
cvx_begin
    variable x(n)
    minimize ( (1/2)*quad_form(x,P) + q'*x + r)
    subject to 
        A'*x <= 10
        B'*x >= 2
        C'*x == 5
        0 <= x(1) <=5
        1 <= x(2) <=5
        0 <= x(3) <=5
cvx_end