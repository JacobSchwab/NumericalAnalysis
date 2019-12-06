function [out] = trapRule(funcIn,a,b)
% funcIn - function whose integral we will approximate
% a - lower (left) limit of integration
% b - upper (right) limit of integration
%out - approximation of the integral of funcIn from a to b using the
%       midpoint rule
% 

out =(funcIn(a)+funcIn(b))*(b-a)/2;

end