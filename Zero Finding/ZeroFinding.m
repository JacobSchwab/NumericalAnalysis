#Program is designed to aproximate a zero of a function

#Prog Def
  #tolerance is for how close we want aproximation for how close to 0
  #funcIn is function used to find 0's 
  #a & b are the endpoints of the function
  #zeroApp is the aspproximation of the zero function
  #flag is message about conclusion 

function [zeroApp, flag] = ZeroFinding (funcIn, a, b, tolerance)
  
  if funcIn(a) * funcIn(b) >= 0
    zeroApp=99999999999;
    flag = 'bad starting conditions for a and b';
  else 
    
    while (b-a > tolerance)
    mdpt = (a+b)/2;
    
    if funcIn(mdpt) == 0;
      zeroApp = mdpt;
      a = mdpt;
      b = mdpt; # these are basically a break statement
      
    else if funcIn(a)*funcIn(mdpt) < 0
      b = mdpt; 
    
    else 
      a = mdpt;
      
    end
    zeroApp = mdpt; %assign output 
   end
   flag = 'good result tolerance met';
   
  end
  
 end
      
  
endfunction
