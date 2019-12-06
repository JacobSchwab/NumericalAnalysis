function [out] = CtrapRuleExt(funcIn,a,b,Nsub)
% funcIn - function whose integral we will approximate
% a - lower (left) limit of integration
% b - upper (right) limit of integration
% Nsub - number of subinterval for composite rule
%out - approximation of the integral of funcIn from a to b using the
%       midpoint rule
% mdpt - midpooint fo a and point

    out=4*CtrapRule(funcIn,a,b,2*Nsub);
    out=out-CtrapRule(funcIn,a,b,Nsub);
    out=out/3;


end