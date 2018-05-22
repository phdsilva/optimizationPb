% A company makes two products (X and Y) using two machines (A and B). Each unit of X that is produced requires 50 minutes processing time on machine A and 30 minutes processing time on machine B. Each unit of Y that is produced requires 24 minutes processing time on machine A and 33 minutes processing time on machine B.
% At the start of the current week there are 30 units of X and 90 units of Y in stock. Available processing time on machine A is forecast to be 40 hours and on machine B is forecast to be 35 hours.
% The demand for X in the current week is forecast to be 75 units and for Y is forecast to be 95 units. Company policy is to maximise the combined sum of the units of X and the units of Y in stock at the end of the week.
%http://people.brunel.ac.uk/~mastjjb/jeb/or/morelp.html
%ex 1 
cvx_begin

variable x(1);
variable y(1);
maximize (x+y-50);
subject to
    50*x + 24*y <= 40*60; %maq A
    30*x + 33*y <= 35*60; %maq B
    x + 30 - 75 >= 0;     %Produz pelo menos para zerar o estoque de A
    y + 90 -95  >= 0;     %Produz pelo menos para zerar o estoque de B

cvx_end


%resp 45 x e 6 y (6.25) em que o valor otimo é 1( 1.25 mas como arredondou 6.25)
