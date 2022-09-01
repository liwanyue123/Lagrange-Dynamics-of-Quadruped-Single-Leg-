function [coef] = collectCoef(func,Theta)
%提取系数
 Theta=subTime(Theta)
coef=equationsToMatrix(func, Theta)
end

