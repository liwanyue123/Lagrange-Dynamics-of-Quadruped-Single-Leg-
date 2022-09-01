function [omiga] = calOmigaFromRotMat(RotMat)
%通过旋转矩阵求角速度
if(max(size(RotMat))>3)
    RotMat=RotMat(1:3,1:3);
end
 
omigaMat=dif(RotMat)*RotMat';
omiga=[omigaMat(3,2);omigaMat(1,3);omigaMat(2,1)];
end
