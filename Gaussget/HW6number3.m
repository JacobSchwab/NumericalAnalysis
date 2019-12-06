syms x y
f=sqrt(9-x^2-y^2)
fx=diff(f,x)
fy=diff(f,y)
HW6_3=matlabFunction(sqrt(fx^2+fy^2+1))