function out = Lnk(xVar,xData,kVal)
%Lnk will give the value of an (n-1)th degree polynomial (n=length(xVec) 
%which is equal to one at xVec(kVal) and zero at xVec(index) when index~=k.
%
%xVar - value of the x xariable where we will evaluate the polynomial
%xData - a list of discrete values used to build the polynomial
%kVal- the index of xVec where the polynomial will be equal to one.

N=length(xData);

numerator=1;
denominator=1;

for index=1:N,
    if index != kVal
        numerator=numerator.*(xVar - xData(index));
        denominator=denominator*(xData(kVal) - xData(index));
    end
end

out=numerator/denominator;
