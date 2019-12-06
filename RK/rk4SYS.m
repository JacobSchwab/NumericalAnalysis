function [tOut,wOut] = rk4SYS(rhsf,a,b,alpha,N)

h= (b-a)/N;

wOut(:,1)=alpha;
tOut(1)=a;

for index=1:N
    temp = h*rhsf(tOut(index), wOut(:,index));
    temp2 = h*rhsf(tOut(index)+h/2, wOut(:,index)+temp/2);
    temp3 = h*rhsf(tOut(index)+h/2, wOut(:,index)+temp2/2);
    temp4 = h*rhsf(tOut(index)+h, wOut(:,index)+temp3);
    wOut(:,index+1)=wOut(:,index) + (1/6)*(temp+2*temp2+2*+temp3+temp4);
    tOut(index+1)=tOut(index)+h;
end