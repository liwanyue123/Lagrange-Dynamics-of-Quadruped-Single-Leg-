function [mat] = eOmega2Mat(w,theta)
%这里是e^([w]*theta).使用泰勒指数展开
A=vectorToSkewMat(w);
I3=identityMat(3);
mat=I3;
i=1;
n=5;%泰勒展开5项好了
while(i<=n)
part_i=(theta*A)^i/factorial(i);
mat=mat+part_i;
i=i+1;
end
end 
