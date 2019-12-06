function [out] = CmpTrapRuleChallenge(funcIn, a, b, N)
  %funcIn = function whos integral is approximated 
  %a = lower/left limit
  %b = right limit
  %mdpt is mid point
  %this functon uses the trapeziodal rule 

    out = 4*(CmpTrapRule(funcIn,a,b,2*N));
    out = out - CmpTrapRule(funcIn,a,b,N);
    out = out/3;


  endfunction

