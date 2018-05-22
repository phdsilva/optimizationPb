%http://people.brunel.ac.uk/~mastjjb/jeb/or/morelp.html
%UG EXAM 1988
% Solve
% minimise
% 4a + 5b + 6c
% subject to
% a + b >= 11
% a - b <= 5
% c - a - b = 0
% 7a >= 35 - 12b
% a >= 0 b >= 0 c >= 0

cvx_begin;

    variable a(1);
    variable b(1);
    variable c(1);
    minimize 4*a + 5*b +6*c;
    subject to 
        a + b >= 11
        a - b <= 5
        c - a - b == 0
        7*a - 35 + 12*b >= 0
        a >= 0
        b >= 0 
        c >= 0
        
cvx_end;