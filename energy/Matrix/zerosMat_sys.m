% 符号运行时候，你直接定义零矩阵，里面元素都是浮点数
function [Mat_syms] = zerosMat_sys(rows,cols)
Mat_syms=sym (zeros(rows,cols));
end

