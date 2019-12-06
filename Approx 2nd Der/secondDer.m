%function to aproximate the derivitive of 
%ava - where aprox the second derivitive at
%hval - step size
%dapp - is aprox output

function [dApp] = secondDer (fx,aval,hval)

  dApp = (fx(aval+hval)-2*fx(aval) + fx(aval-hval))/(hval^2);
  
endfunction
