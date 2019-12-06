%function to aproximate the derivitive of 
%ava - where aprox the derivitive at
%hval - step size
%dapp - is aprox output

function [cApp] = cDiff (fx,aval,hval)

  cApp = (fx(aval+hval)-fx(aval-hval))/(2*hval);

endfunction
