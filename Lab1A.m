function [t] = Lab1A(np,nd)
if (nargin < 1), np = 1e3; nd = 10; end 
A = randn(np, nd); B = randn(np,nd);
d = zeros(np,1);
tic;
for i = 1:np
    for j = 1:nd
        d(i) = sqrt((B(i,1) - A(i,1)).^2 + (B(i,2) - A(i,2)).^2);
    end
end
toc;
t = toc;

