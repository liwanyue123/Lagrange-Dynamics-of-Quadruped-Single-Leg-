function [C_AfterRot] = rotateCoordinate(C,axis,theta)

%将一个矩形的四个点都绕直线L旋转theta
C_AfterRot.p0 = rotate(C.p0,axis.a0,axis.a1,theta);
C_AfterRot.x1 = rotate(C.x1,axis.a0,axis.a1,theta );
C_AfterRot.y1 = rotate(C.y1,axis.a0,axis.a1,theta );
C_AfterRot.z1 = rotate(C.z1,axis.a0,axis.a1,theta );
end

