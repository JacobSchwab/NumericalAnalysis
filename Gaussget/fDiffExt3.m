function [dApp] = fDiffExt3(funcIn,aVal,hVal)
%funcIn - function to approximate the derivative of... (function handle)
%aVall - where we want to approximate the derivative
%hval - step size
%dApp- derivative approximation output
dApp=(16*fDiffExt(funcIn,aVal,hVal/2)-fDiffExt(funcIn,aVal,hVal))/15;
end