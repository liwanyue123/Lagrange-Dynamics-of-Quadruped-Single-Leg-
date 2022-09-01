function [Vec_end] = expandDim(Vec_res,num)

Vec_end=[0;0;0;0];
Vec_end(1:3)= Vec_res(1:3);
Vec_end(4)=num;
end

