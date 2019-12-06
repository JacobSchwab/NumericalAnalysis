
function [pApp,flag, count] = NewBisec (f,fx,x,tolerance)

flag = "bad";
xCurr = x; %current x value
count = 0;

  while (abs(f(xCurr)) > tolerance) && (count < 100)
  
    xCurr = xCurr - (f(xCurr)/fx(xCurr));
    count ++;

end

if (abs(f(xCurr)) > tolerance) <= tolerance

  pApp=xCurr;
  flag="good";
 
else 
 
 pApp = 99999999;
 flag = "too many iteration";
 
end
  
  end