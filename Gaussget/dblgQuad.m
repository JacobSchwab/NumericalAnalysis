function [out] = dblgQuad(funcInxy,a,b,cx,dx,Nx,Ny)

% a and b are limits for x
% cx and dx are limits for y

[t,w] = gaussget(Nx);
x = ((b-a)*t+(b+a))/2;
w = w*(b-a)/2;
out = 0;

for index=1:Nx
  tempf = @(y) funcInxy(x(index),y);
  tempc = cx(x(index));
  tempd = dx(x(index));
  out = out + w(index)*gQuad(tempf,tempc,tempd,Ny);
end

endfunction