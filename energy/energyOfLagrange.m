clear
warning('off')
addpath(genpath('.\simple'));%简化的函数
addpath(genpath('.\genTransform'));%简化的函数
syms Ixx1 Iyy1 Izz1 Ixx2 Iyy2 Izz2 Ixx3 Iyy3 Izz3 real
syms L1 L2 L3    a1 a2 a3 b1 real
syms g m1 m2 m3 real
syms theta_1(t) theta_2(t) theta_3(t) t real
syms theta_1_d(t) theta_2_d(t) theta_3_d(t)   real
syms theta_1_dd(t) theta_2_dd(t) theta_3_dd(t)   real
%先说一下坐标系设置，body就是身体正中心的那个坐标系，bi就是四条腿的肩膀坐标系，方向和body一样
%之后的abad，hip,knee和mit的一致，固连在腿部的三个刚体上面

%a1 a2 a3 b1是腿部三个刚体的质心位置，可以看我的图示
%Ixx1 Iyy1 Izz1 Ixx2 Iyy2 Izz2 Ixx3 Iyy3 Izz3是腿部三个刚体在质心处的惯量，坐标系方向和该刚体坐标系一致
% --------------Part1.计算刚体转动动能-------------
%-------------omiga1---------------
R_b2Abad=genBi2AbadMetrix(1);
R_b2Abad=R_b2Abad(1:3,1:3);
omiga_L1=calOmigaFromRotMat(R_b2Abad);
omiga_L1=simplify(subTime(omiga_L1));


%-------------omiga2---------------
R_b2Hip=genBi2HipMetrix(1);
R_b2Hip=R_b2Hip(1:3,1:3);
omiga_L2=calOmigaFromRotMat(R_b2Hip);
omiga_L2=simplify(subTime(omiga_L2));

%-------------omiga3---------------
R_b2Knee=genBi2KneeMetrix(1);
R_b2Knee=simplify(R_b2Knee(1:3,1:3));
omiga_L3=calOmigaFromRotMat(R_b2Knee);
omiga_L3=simplify(subTime(omiga_L3));

%-------------转动惯量---------------
I1=diag([Ixx1 ,Iyy1, Izz1]);
I2=diag([Ixx2 ,Iyy2, Izz2]);
I3=diag([Ixx3 ,Iyy3, Izz3]);
%转换基地到和bi相同方向
I1_bi=R_b2Abad*I1*R_b2Abad';
I2_bi=R_b2Hip*I2*R_b2Hip';
I3_bi=R_b2Knee*I3*R_b2Knee';

I1_bi=simplify(subTime(I1_bi));
I2_bi=simplify(subTime(I2_bi));
I3_bi=simplify(subTime(I3_bi));
%-------------转动动能---------------
Ek_r=(omiga_L1'*I1_bi*omiga_L1  + omiga_L2'*I2_bi*omiga_L2  +  omiga_L3'*I3_bi*omiga_L3)/2


 

%--------------Part2.计算质心平动动能-------------
% --------------C1---------------
R=genBi2C1Metrix(1);%肩膀到第一部分质心c1的变化矩阵
P1=R(1:3,4);%得到c1在肩膀坐标系下的位置
J1=Jocobian(P1,[theta_1(t),theta_2(t),theta_3(t)]);%获得bi到c1的雅可比矩阵

%--------------C2---------------
R=genBi2C2Metrix(1);
P2=R(1:3,4);
J2=Jocobian(P2,[theta_1(t),theta_2(t),theta_3(t)]);

%--------------C3---------------
R=genBi2C3Metrix(1);
P3=R(1:3,4);
J3=Jocobian(P3,[theta_1(t),theta_2(t),theta_3(t)]);

q_d=[theta_1_d ;theta_2_d; theta_3_d];%各个关节的角速度

v1=J1*q_d ;
v2=J2*q_d ;
v3=J3*q_d ;
% Ek_t=(q_d'*J1'*m1*J1*q_d + q_d'*J2'*m2*J2*q_d  +  q_d'*J2'*m3*J2*q_d   )/2%腿部平动总动能
Ek_t=(v1'*m1*v1 +v2'*m2*v2 +  v3'*m3*v3   )/2%腿部平动总动能
Ek_t=subTime(Ek_t);
Ek=Ek_t+Ek_r
 



%--------------Part3.计算刚体重力势能-------------
%计算重力势能的距离
v=[0;0;1];%地面法向量
h1=simplify(P1'*v);%第一部分质心在z轴方向到肩膀坐标系原点的距离,就是点乘竖直向上单位向量的定义
h2=simplify(P2'*v);
h3=simplify(P3'*v);

h1=subTime(h1);
h2=subTime(h2);
h3=subTime(h3);

Ep=m1*g*h1+m2*g*h2+m3*g*h3;
%拉格朗日方程重力势能这一项可以单独计算
Ep_dp=[dif(Ep,theta_1);dif(Ep,theta_2) ;dif(Ep,theta_3)]


% --------------Part4.拉格朗日公式计算每个关节扭矩-------------
 

L=Ek-Ep;%拉式量
L=subTime(L);%只有把(t)去掉，才能偏导。但是只有加上时间才能全导。。。。。

 
L_dqd= [dif(L,theta_1_d);dif(L,theta_2_d) ;dif(L,theta_3_d)];%L_dqd表示L对theta_1_d偏导
L_dqd=addTime(L_dqd);
L_dqd_dt=dif(L_dqd);%L_dqd_dt表示L_dqd对t求全导
L_dqd_dt=subTime(L_dqd_dt);

L_dq= [dif(L,theta_1);dif(L,theta_2) ;dif(L,theta_3)];%对theta_1偏导 
 

Q=L_dqd_dt-L_dq;

 
% --------------Part5.化简公式，提出矩阵D和C,计算G-------------
%在simple的main函数中做，也是这些代码，这里只要定义theta_1_dd就会自带（t）,懒得处理了

theta_dd=[theta_1_dd ;theta_2_dd;theta_3_dd];
theta_d=[theta_1_d ;theta_2_d;theta_3_d];
theta=[theta_1;theta_2 ;theta_3];
theta_dd=subTime(theta_dd);
theta_d=subTime(theta_d);
theta=subTime(theta);

Q_col=collect(Q,theta_dd);%先提取一下，不然matlab不会做

D=equationsToMatrix(Q_col,theta_dd)%二阶导的系数
%
Q_col=simplify( Q_col-D*theta_dd - Ep_dp);%把含有二阶导的部分,和重力势能部分去掉


Q_col=collect(Q_col,theta_d);

C=equationsToMatrix_NonLinear(Q_col, theta_d)

G=Ep_dp

% --------------Part6.求theta_dd-------------

%角加速度当然不能通过速度求差分做了，误差极大
%根据公式theta_dd=J_inverse*(a - *Jd * theta_d)

R=genBi2FootMetrix(1);%肩膀到足端的变化矩阵
P1=R(1:3,4);%得到c1在肩膀坐标系下的位置
J=Jocobian(P1,[theta_1(t),theta_2(t),theta_3(t)]);%获得bi到c1的雅可比矩阵
J_str=addTime(J);%角度变成时间的函数，之后才能求导
Jd=diff(J_str);%求导，得到雅可比矩阵的导数
Jd=subTime(Jd)%变回符号











