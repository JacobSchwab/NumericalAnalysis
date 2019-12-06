#Program is designed to aproximate a zero of a function

#Prog Def
  #tolerance is for how close we want aproximation for how close to 0
  #funcIn is function used to find 0's 
  #a & b are the endpoints of the function
  #zeroApp is the aspproximation of the zero function
  #flag is message about conclusion 

function [zeroApp,flag, count] = secM (funcIn, xInit1, xInit2, tolerance)
  count = 0;
  xprev = xInit1;
  xcur= xInit2;
  flag = "good";
  while abs(funcIn(xcur)) > tolerance && (count < 100)
    
    count = count + 1;
    tempnum = xcur; 
    xcur = xcur - (xcur - xprev)*(funcIn(xcur))/(funcIn(xcur) - funcIn(xprev));
    xprev = tempnum;
    
  end 
  
  if abs(funcIn(xcur)) <= tolerance
    zeroApp = xcur;
    fag = "good";
    
  else
    zeroApp = 999999999;
    flag = "bad";
  endif

  
  end