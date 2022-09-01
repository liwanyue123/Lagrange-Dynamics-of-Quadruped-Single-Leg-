function [C_Root] = showWorldCoordinate(rate)
%世界坐标系
[p0.X,p0.Y,p0.Z]=deal(0,0,0);%原点
[x1.X,x1.Y,x1.Z]=deal(1,0,0);%红色是x
[y1.X,y1.Y,y1.Z]=deal(0,1,0);%蓝色是y
[z1.X,z1.Y,z1.Z]=deal(0,0,1);%绿色是z
[C_Root.p0,C_Root.x1,C_Root.y1,C_Root.z1]=deal(p0,x1,y1,z1);%建立一个坐标系C_Root
showCoodinate(C_Root,"World",rate)
hold on;
end

