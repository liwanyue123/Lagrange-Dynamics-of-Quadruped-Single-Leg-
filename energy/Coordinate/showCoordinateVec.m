function [V_end] = showCoordinateVec(C_body,Vec,color)
addpath(genpath("../TwistCalculation"));%计算显示坐标系相关

R_world2Body= getCoordMatrix(C_body,'R');
V_end=R_world2Body*Vec;%先把向量换个基底

Coord_positon = getCoordDot(C_body);%得到这个坐标系在世界坐标系下的位置
lineArrow(Coord_positon,V_end,color );%画向量
end

