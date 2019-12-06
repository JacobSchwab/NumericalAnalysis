N=1:1000;
hVec = 1./N;

testFunc = @(x) cos(x);
actual = sin(2)-sin(1);

for index=1:length(hVec)
  
  dApprox = CmpRule(testFunc,1,2,index);
  errorVec(index)=abs(dApprox-actual);
  
endfor

  loglog(hVec,errorVec);