function [] = showCoodinate(C,name,rate)
%C.p0之类的都是三维，C.p0是x轴起点，C.x1是x轴的终点
% quiver3要传入起点位置，和三个方向增量
%rate是比例，长度1可能太短了，不好看
text(C.p0.X,C.p0.Y,C.p0.Z,name,'color','r');
quiver3(C.p0.X,  C.p0.Y,  C.p0.Z,   C.x1.X-C.p0.X,   C.x1.Y-C.p0.Y,   C.x1.Z-C.p0.Z  ,rate,'r')  
hold on
quiver3(C.p0.X,C.p0.Y,C.p0.Z,C.y1.X-C.p0.X,C.y1.Y-C.p0.Y,C.y1.Z-C.p0.Z,rate,'b')
hold on
quiver3(C.p0.X,C.p0.Y,C.p0.Z,C.z1.X-C.p0.X,C.z1.Y-C.p0.Y,C.z1.Z-C.p0.Z,rate,'g')
hold on

end

