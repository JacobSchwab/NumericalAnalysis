function [dApp] = fDiffExt(funcIn,aVal,hVal)
%funcIn - function to approximate the derivative of... (function handle)
%aVall - where we want to approximate the derivative
%hval - step size
%dApp- derivative approximation output
dApp=2*fDiff(funcIn,aVal,hVal/2)-fDiff(funcIn,aVal,hVal);
end