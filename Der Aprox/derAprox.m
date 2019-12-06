%function to aproximate the derivitive of 
%ava - where aprox the derivitive at
%hval - step size
%dapp - is aprox output

function [dApp] = derAprox (fx,aval,hval)

  dApp = (fx(aval+hval)-fx(aval))/hval;

endfunction
