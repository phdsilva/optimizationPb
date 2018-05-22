%Programa que resolve um mmq
%----------------------------------
%Gera um conjunto aleatorio de dados
%Substituir pelos dados
%resolve ex http://www2.if.usp.br/~otaviano/cursommq/SlidesCursoMMQ13fev2014.pdf
%fit data to y = ax2 +bx3
%m = 4;
%n = 2;
% A = randn(m,n);
% b = randn(m,1);
% x = [-1 0 1 3];
% y = [3.9 -1.6 1.4 -15];
% A = zeros(m,n);
% for r = 1:m
%     for c = 1:n
%         if c == 1
%             A(r,c) = x(r)^2;
%         
%         else
%             A(r,c) = x(r)^3;
%         end;
%     end;
% end;

%b = transpose(y);
%problema 2 achar 
%----------------------------------
cvx_begin;%começa o escopo de otimização

    variable x_e(n); %declara a variavel de otm tam n
    minimize (norm(A*x_e-b));%função objetivo
    
cvx_end;

