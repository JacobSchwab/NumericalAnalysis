function [out] = trapRule(funcIn, a, b)
  %funcIn = function whos integral is approximated 
  %a = lower/left limit
  %b = right limit
  %mdpt is mid point
  %this functon uses the trapeziodal rule 
  
  out = (funcIn(a) + funcIn(b))*(b-a)/2;
  
endfunction
