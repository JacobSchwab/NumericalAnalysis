function [dApp] = fDiffExt2(funcIn,aVal,hVal)
%funcIn - function to approximate the derivative of... (function handle)
%aVall - where we want to approximate the derivative
%hval - step size
%dApp- derivative approximation output
dApp=(4*fDiffExt(funcIn,aVal,hVal/2)-fDiffExt(funcIn,aVal,hVal))/3;
end