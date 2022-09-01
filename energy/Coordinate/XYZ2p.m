function [p] = XYZ2p(a)
 %将结构体xyz转成向量
[p(1),p(2),p(3)]=deal(a.X,a.Y,a.Z);
end

