function [out] = gQuad (funcIn,a,b,N)

[t,w] = gaussget(N);
x = ((b-a)*t+(b+a))/2;
w = w*(b-a)/2;
out = sum(w.*funcIn(x));


end