clear;
addpath(genpath('.\simple'));%简化的函数
syms Ixx1 Iyy1 Izz1 Ixx2 Iyy2 Izz2 Ixx3 Iyy3 Izz3 real
% syms L1 L2 L3   real
% syms g m1 m2 m3   real
% syms theta_1(t) theta_2(t) theta_3(t) t real
 
%-------------omiga1---------------
R_b2Hx=genBi2HxMetrix(1);
R_b2Hx=R_b2Hx(1:3,1:3);
omiga_L1=calOmigaFromRotMat(R_b2Hx);
omiga_L1=simplify(WordReplace(omiga_L1))


%-------------omiga2---------------
R_b2Hy=genBi2HyMetrix(1);
R_b2Hy=R_b2Hy(1:3,1:3);
omiga_L2=calOmigaFromRotMat(R_b2Hy);
omiga_L2=simplify(WordReplace(omiga_L2))

%-------------omiga3---------------
R_b2Knee=genBi2KneeMetrix(1);
 R_b2Knee=R_b2Knee(1:3,1:3);
omiga_L3=calOmigaFromRotMat(R_b2Knee);
omiga_L3=simplify(WordReplace(omiga_L3))

%-------------转动惯量---------------
I1=diag([Ixx1 ,Iyy1, Izz1]);
I2=diag([Ixx2 ,Iyy2, Izz2]);
I3=diag([Ixx3 ,Iyy3, Izz3]);
%转换基地到和bi相同方向
I1_bi=R_b2Hx*I1*R_b2Hx';
I2_bi=R_b2Hy*I2*R_b2Hy';
I3_bi=R_b2Knee*I3*R_b2Knee';

I1_bi=simplify(WordReplace(I1_bi))
I2_bi=simplify(WordReplace(I2_bi))
I3_bi=simplify(WordReplace(I3_bi))
%-------------转动动能---------------
Ek=(omiga_L1'*I1_bi*omiga_L1  + omiga_L2'*I2_bi*omiga_L2  +  omiga_L3'*I3_bi*omiga_L3)/2