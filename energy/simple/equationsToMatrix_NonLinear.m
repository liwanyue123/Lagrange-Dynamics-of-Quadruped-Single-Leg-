function [A,b] = equationsToMatrix_NonLinear(eq, x)
%EQUATIONSTOMATRIX equationsToMatrix 用于非线性方程
% 从 eq 中分解出向量 x，这样 eq = Ax + b 
% eq 在 x 中不需要是线性的
% eq 必须是向量方程组，并且 x 必须是符号向量

assert(isa(eq,'sym'), 'Equations must be symbolic')
assert(isa(x,'sym'), 'Vector x must be symbolic')

n = numel(eq);
m = numel(x);

A = repmat(sym(0),n,m);

for i = 1:n % 循环方程
    [c,p] = coeffs(eq(i),x); % 将方程分离为 x(1)...x(n) 的系数和幂，
    for k = 1:numel(p) % 循环通过找到的幂/系数
        for j = 1:m % 循环通过 x(1).. .x(n)
            if has(p(k),x(j))
                % 将项 c(k)*p(k) 转换为 A，分解出 x(j)
                A(i,j) = A(i,j) + c(k)*p(k)/x(j);
                break% 继续下一项 c(k+1), p(k+1) 
            end
        end
    end
end

b = simplify(eq - A*x,'ignoreanalyticconstraints',true); % 确保完全取消条款

end