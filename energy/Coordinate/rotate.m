function [newPosition] = rotate(p,a0,a1,theta )

%         /// 空间任一点绕（起始点a0，终点a1）方向的任意直线逆时针旋转theta角度（弧度），得到新的点
%         /// </summary>
%         /// <param name="p">初始点位置</param>
%         /// <param name="a0">轴线L的起始点</param>
%         /// <param name="a1">轴线L的终点</param>
%         /// <param name="theta">逆时针旋转角度(弧度)</param>


distance =  sqrt( (a1.X - a0.X)^ 2 +  (a1.Y - a0.Y)^ 2 +  (a1.Z - a0.Z)^ 2);
u = (a1.X - a0.X) / distance;
v = (a1.Y - a0.Y) / distance;
w = (a1.Z - a0.Z) / distance;%方向向量(u,v,w)需为单位向量！！！


SinA =  sin(theta);
CosA =  cos(theta);

uu = u * u;
vv = v * v;
ww = w * w;
uv = u * v;
uw = u * w;
vw = v * w;

t00 = uu + (vv + ww) * CosA;
t10 = uv * (1 - CosA) + w * SinA;
t20 = uw * (1 - CosA) - v * SinA;
t30 = 0;

t01 = uv * (1 - CosA) - w * SinA;
t11 = vv + (uu + ww) * CosA;
t21 = vw * (1 - CosA) + u * SinA;
t31 = 0;

t02 = uw * (1 - CosA) + v * SinA;
t12 = vw * (1 - CosA) - u * SinA;
t22 = ww + (uu + vv) * CosA;
t32 = 0;

t03 = (a1.X * (vv + ww) - u * (a1.Y * v + a1.Z * w)) * (1 - CosA) + (a1.Y * w - a1.Z * v) * SinA;
t13 = (a1.Y * (uu + ww) - v * (a1.X * u + a1.Z * w)) * (1 - CosA) + (a1.Z * u - a1.X * w) * SinA;
t23 = (a1.Z * (uu + vv) - w * (a1.X * u + a1.Y * v)) * (1 - CosA) + (a1.X * v - a1.Y * u) * SinA;
t33 = 1;

newPosition.X = t00 * p.X + t01 * p.Y + t02 * p.Z + t03;
newPosition.Y = t10 * p.X + t11 * p.Y + t12 * p.Z + t13;
newPosition.Z = t20 * p.X + t21 * p.Y + t22 * p.Z + t23;


end

