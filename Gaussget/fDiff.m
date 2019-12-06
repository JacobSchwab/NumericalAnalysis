function [dApp] = fDiff(funcIn,aVal,hVal)
%funcIn - function to approximate the derivative of... (function handle)
%aVall - where we want to approximate the derivative
%hval - step size
%dApp- derivative approximation output
dApp=(funcIn(aVal+hVal)-funcIn(aVal))/(hVal);
end

