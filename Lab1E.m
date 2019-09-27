function [d,t] = Lab1E(np,nd,nl)
if (nargin < 1), np = 1e5; nd = 10;n=2; end

hp = gcp('nocreate');
if isempty(hp), hp=parpool(nl); end

aA = randn(np, nd); aB = randn(np,nd);
dA = distributed(aA); dB = distributed(aB);

tic;
dc = sqrt(sum((dA-dB).^2,2));
d = gather(dc);

t = toc;

delete(hp);

