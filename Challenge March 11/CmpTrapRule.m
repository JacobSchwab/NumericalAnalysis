function [out] = CmpTrapRule(funcIn, a, b, N)
  %funcIn = function whos integral is approximated 
  %a = lower/left limit
  %b = right limit
  %mdpt is mid point
  %this functon uses the trapeziodal rule 
  
  h = (b-a)/N;
  xVec = a:h:b;
  out=0;
  
  for index=1:N
    out = out + trapRule(funcIn,xVec(index),xVec(index+1));
  
  end 

  endfunction

