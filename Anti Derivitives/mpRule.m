function [out] = mpRule(funcIn, a, b)
  %funcIn = function whos integral is approximated 
  %a = lower/left limit
  %b = right limit
  %mdpt is mid point
  %this functon uses the midpoint rule 
  
  mdpt = (a+b)/2;
  out = (b-a)*funcIn(mdpt);
  
endfunction
