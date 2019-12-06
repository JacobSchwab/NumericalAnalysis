function out = lnk (xvar, xvec, k)
  
  N = length(xvec);
  num=1;
  den=1;
  
  for index =1:N,
    if index ~= k
      num = num.*(xvar-xvec(index));
      den = den * (xvec(k)-xvec(index));
    end
  end

out = num/den;  
  
endfunction
