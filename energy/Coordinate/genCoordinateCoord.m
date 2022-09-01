function [C_after] =genCoordinateCoord(C_Root,R) 
%把世界坐标系下表示的坐标系C_Root，经过R矩阵变换，得到世界坐标系下表示的坐标系C_after

%以空间中任意位置的坐标系C_Root为基础，然后对他进行变换R，得到这个空间中变换后的C_after
%做法是，以一个基础坐标系C_Base，就是原点的那个标准坐标轴，经过R变换后得到一个过渡坐标
%然后，以C_Root为基础，把过渡坐标表示出来
[p0.X,p0.Y,p0.Z]=deal(0,0,0);
[x1.X,x1.Y,x1.Z]=deal(1,0,0);%红色是x
[y1.X,y1.Y,y1.Z]=deal(0,1,0);%蓝色是y
[z1.X,z1.Y,z1.Z]=deal(0,0,1);%绿色是z
[C_Base.p0,C_Base.x1,C_Base.y1,C_Base.z1]=deal(p0,x1,y1,z1);%Coodinate

%C_Base就是原点的那个标准坐标轴,C_Root是空间中当前的坐标
p=XYZ2p(C_Base.p0);
p(4)=1;
p_after= R*p';
a=p2XYZ(p_after(1:3));
a_end=calCoordinatePlot(C_Root,p_after(1:3) );
C_after.p0=p2XYZ(a_end);

p=XYZ2p(C_Base.x1);
p(4)=1;
p_after= R*p';
a=p2XYZ(p_after(1:3));
a_end=calCoordinatePlot(C_Root,p_after(1:3) );
C_after.x1=p2XYZ(a_end);

p=XYZ2p(C_Base.y1);
p(4)=1;
p_after= R*p';
a=p2XYZ(p_after(1:3));
a_end=calCoordinatePlot(C_Root,p_after(1:3) );
C_after.y1=p2XYZ(a_end);

p=XYZ2p(C_Base.z1);
p(4)=1;
p_after= R*p';
a=p2XYZ(p_after(1:3));
a_end=calCoordinatePlot(C_Root,p_after(1:3) );
C_after.z1=p2XYZ(a_end);
 

hold on;
 
 