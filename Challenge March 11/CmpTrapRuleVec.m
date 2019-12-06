function [out] = CmpTrapRuleVec(xvec,yvec)
  %funcIn = function whos integral is approximated 
  %a = lower/left limit
  %b = right limit
  %mdpt is mid point
  %this functon uses the trapeziodal rule 
  
  out=0;
  
  for index=1:length(xvec)-1
    h=xvec(index+1) - xvec(index);
    out = out + (yvec(index+1) + yvec(index))*h/2;
  
  end 

  endfunction

