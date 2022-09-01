function [Mat_end] = expandMatrixDim(Mat_res,num)

Mat_end=[0,0,0,0;0,0,0,0;0,0,0,0;0,0,0,0;];
Mat_end(1:3,1:3)= Mat_res(1:3,1:3);
Mat_end(4,4)=num;
end

