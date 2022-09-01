function [J] = Jocobian(P,theta)%传入足端位置，和从基础坐标系到足端要经过的关节

P=subTime(P) ;
theta=subTime(theta)  ;%让它变成t的函数，用来对t求导
%先算出第一列
col=simplify(dif(P,theta(1)));
J=[col];
num =max(size(theta));
%雅可比一列一列算
for i=2:num  
    col=simplify(dif(P,theta(i)));
    J=[J col];
end
end

