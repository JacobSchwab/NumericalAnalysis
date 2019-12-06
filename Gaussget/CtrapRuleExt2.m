function [out] = CtrapRuleExt2(funcIn,a,b,Nsub)
% funcIn - function whose integral we will approximate
% a - lower (left) limit of integration
% b - upper (right) limit of integration
% Nsub - number of subinterval for composite rule
%out - approximation of the integral of funcIn from a to b using the
%       midpoint rule
% mdpt - midpooint fo a and point

    out=16*CtrapRuleExt(funcIn,a,b,2*Nsub);
    out=out-CtrapRuleExt(funcIn,a,b,Nsub);
    out=out/15;


end