

% model parameters

A = [-2, 1, 0; 0, -2, 0; 0, 0, -5]
B = [0; 1; -1]
C = eye(3)
D = zeros(3,1)

%%sezione2
% le sezioni permettoni di crare pezzi di codice virtuali da eseguire
% separatamente

R = [B, A*B, A^2*B]
rank(R)
det(R)
% è raggiungibile

%progettiamo il controllore

K = - place(A,B,[-10,-11,-9])
Ac = A+B*K
eig(Ac)

