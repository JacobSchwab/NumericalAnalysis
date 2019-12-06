function out = interpPoly (xvar, xvec, yvec)
    %xvar - val of x variable
    %xvec - list of discreete x val to build polynomial 
    %yvec - "  "
    
    N = length(xvec);
    out = 0;
    
    for index=1:N,
      out = out + yvec(index)*lnk(xvar,xvec,index);
    end 
    
endfunction
