 function [Mat] = eS2Mat(S,theta)
%这里是e^([S]*theta).使用泰勒指数展开
w=S(1:3);
v=S(4:6);
R=eOmega2Mat(w,theta);
A=vectorToSkewMat(w);
I3=identityMat(3);
P=( I3*theta  + (1-cos(theta))*A  +(theta-sin(theta))*A*A  )*v;
 Mat=[R,P;
     zerosMat(1,3),1 ];
end