function [out] = CtrapRule(funcIn,a,b,Nsub)
% funcIn - function whose integral we will approximate
% a - lower (left) limit of integration
% b - upper (right) limit of integration
% Nsub - number of subinterval for composite rule
%out - approximation of the integral of funcIn from a to b using the
%       midpoint rule
% mdpt - midpooint fo a and point

h=(b-a)/Nsub;
xVec=a:h:b;

out=0;
for index=1:Nsub
    out=out+trapRule(funcIn,xVec(index),xVec(index+1));
end

end