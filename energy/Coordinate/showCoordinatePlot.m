function [p_end] = showCoordinatePlot(C_Root,p,isShowLine)
% ！！！！p_end是空间中不动的点，不是向量
%C_Root是一个坐标系，p是这个坐标系中的目标点的坐标
%isShowLine表示是否要把这点连线到坐标系原点上
%x,y,z的方向向量 ，的增量是多少
x_d=[C_Root.x1.X-C_Root.p0.X , C_Root.x1.Y-C_Root.p0.Y  ,C_Root.x1.Z-C_Root.p0.Z  ];
y_d=[C_Root.y1.X-C_Root.p0.X , C_Root.y1.Y-C_Root.p0.Y  ,C_Root.y1.Z-C_Root.p0.Z  ];
z_d=[C_Root.z1.X-C_Root.p0.X , C_Root.z1.Y-C_Root.p0.Y  ,C_Root.z1.Z-C_Root.p0.Z  ];

p_start=[C_Root.p0.X,C_Root.p0.Y,C_Root.p0.Z];
%目标点在世界坐标系中的坐标
p_end=p_start+p(1)*x_d+p(2)*y_d+p(3)*z_d;%就是将坐标系的三个方向加上距离
plot3(p_end(1),p_end(2),p_end(3),'o')

if(isShowLine)
    [u.a0]=deal(C_Root.p0);
    [u.a1.X,u.a1.Y,u.a1.Z]=deal(p_end(1),p_end(2),p_end(3) );
    showLine([u],'--','r')
end
p_end=p_end';

hold on;
end

