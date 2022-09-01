function [mat_des] = C_topLeftCorner(mat_res,size,block_mat)
 mat_res(1:size(1),1:size(2))=block_mat;
 mat_des=mat_res;
end

