function [mat_des] = C_topRightCorner(mat_res,block_size,block_mat)
% 获取原始矩阵的尺寸
[Mat_row,Mat_col]=size(mat_res);
block_row=block_size(1);
block_col=block_size(2);
begin_col=Mat_col-block_col+1;
mat_res(1:block_row,begin_col:Mat_col)=block_mat;
mat_des=mat_res;
end

