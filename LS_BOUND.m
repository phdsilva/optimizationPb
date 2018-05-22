% Bound-constrained LS
%Conjunto de dados aleatorios
%Substituir por dados
%------------------------------
m = 16; n = 8;
A = randn(m,n);
b = randn(m,1);

bnds = randn(n,2);
l = min(bnds,[],2);
u = max(bnds,[],2);
%-----------------------------
cvx_begin;

variable x(n)
minimize (norm(A*x-b));
subject to 
    l<=x<=u;
    
cvx_end
    
    