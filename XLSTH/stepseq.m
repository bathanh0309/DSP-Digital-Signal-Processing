
function[x, n] = stepseq(n0,n1,n2)
%Tao ra day x(n) = u(n-n0); n1 <= n <= n2
%[x,n] = stepseq(n0,n1,n2)
n = [n1:n2];
x = [(n-n0) >=0];