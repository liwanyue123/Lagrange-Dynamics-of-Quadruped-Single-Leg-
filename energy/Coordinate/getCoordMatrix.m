function [T_world2Body] = getCoordMatrix(C_body,type)
% 传入一个坐标系，给出世界坐标系到它的变换矩阵
%诶，之前定义坐标系的时候是记录三个轴端点的位置，所以要转成向量还要减一下
Coord_p=[C_body.p0.X,C_body.p0.Y,C_body.p0.Z]';
Coord_x=[C_body.x1.X,C_body.x1.Y,C_body.x1.Z]'-Coord_p;
Coord_y=[C_body.y1.X,C_body.y1.Y,C_body.y1.Z]'-Coord_p;
Coord_z=[C_body.z1.X,C_body.z1.Y,C_body.z1.Z]'-Coord_p;

if(type=='T')
T_world2Body=[Coord_x,Coord_y,Coord_z,Coord_p;
    0,0,0,1];
elseif(type=='R')
    T_world2Body=[Coord_x,Coord_y,Coord_z];
else
    error("have not this type");
end
end

