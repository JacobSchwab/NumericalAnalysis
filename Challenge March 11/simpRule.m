function [out] = simpRule(funcIn, a, b)
  %funcIn = function whos integral is approximated 
  %a = lower/left limit
  %b = right limit
  %mdpt is mid point
  %this functon uses the midpoint rule 
  
  mdpt = (a+b)/2;
  out = (funcIn(a) + 4*funcIn(mdpt)+funcIn(b))*(b-a)/6;
  
endfunction
