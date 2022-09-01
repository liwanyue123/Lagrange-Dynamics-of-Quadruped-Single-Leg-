function [Mat_end] = contractMatrixDim(Mat_res)

 r1=[1,0,0,0;
     0,1,0,0
     0,0,1,0]
 
  r2=[1,0,0;
     0,1,0;
     0,0,1;
     0,0,0 ]
Mat_end=r1* Mat_res*r2;
 
end

