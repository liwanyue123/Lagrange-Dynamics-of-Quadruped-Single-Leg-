clear
%--------------Part1.计算腿部三部分的质心，相对于肩膀坐标系的雅可比矩阵-------------
syms L1 L2 L3    a1 a2 a3 b1 real
syms g m1 m2 m3 real
syms theta_1(t) theta_2(t) theta_3(t) t real
 syms theta_1_d theta_2_d theta_3_d   real
%第二第三条腿是-l1
 
%--------------C1---------------
 
R=genBi2C1Metrix(1);
P1=R(1:3,4);
J1=Jocobian(P1,[theta_1(t),theta_2(t),theta_3(t)])
%--------------C2---------------
 

R=genBi2C2Metrix(1);
P2=R(1:3,4);
J2=Jocobian(P2,[theta_1(t),theta_2(t),theta_3(t)])

%--------------C3---------------
R=genBi2C3Metrix(1);
P3=R(1:3,4);
J3=Jocobian(P3,[theta_1(t),theta_2(t),theta_3(t)])
q_d=[theta_1_d ;theta_2_d; theta_3_d]
Kt=(q_d'*J1'*m1*J1*q_d + q_d'*J2'*m1*J2*q_d  +  q_d'*J2'*m1*J2*q_d   )/2
% 
% %计算重力势能的距离
% v=[0;0;1];%地面法向量
% h1=simplify(P1'*v)
% h2=simplify(P2'*v)
% h3=simplify(P3'*v)
% Eg=m1*g*h1+m2*g*h2+m3*g*h3
% p_d=simplify([diff(Eg,theta_1);diff(Eg,theta_2) ;diff(Eg,theta_3)] )%偏导
% 
% % %--------------Part1.通过拉格朗日方程计算腿部各个关节力矩-------------
% %把角度写成复合函数就会导致，符号式变成了一个公式，所以分开算，虽然有点麻烦
% syms L1 L2 L3    a1 a2 a3 b1 real
% syms g m1 m2 m3 real
% syms theta_1(t) theta_2(t) theta_3(t) t real
% 
% pd(1)= - g*m2*(L1*b1*cos(theta_1) - L2*a2*cos(theta_2)*sin(theta_1)) - g*m3*(L1*cos(theta_1) - L2*cos(theta_2)*sin(theta_1) + L3*a3*(sin(theta_1)*sin(theta_2)*sin(theta_3) - cos(theta_2)*cos(theta_3)*sin(theta_1))) - L1*a1*g*m1*cos(theta_1);
% pd(2)=   g*cos(theta_1)*(L2*m3*sin(theta_2) + L3*a3*m3*sin(theta_2 + theta_3) + L2*a2*m2*sin(theta_2));
% pd(3)=   L3*a3*g*m3*sin(theta_2 + theta_3)*cos(theta_1);
%  
%  
%  for i=1:3
% d(i)= simplify(dif(pd(i)));
%  end
%  
% torque=d'-pd'
%  
% str_theta={'theta_1','theta_2','theta_3'}
%  for i=1:3
% torque_simple(i)=diffWordReplace(torque(i),str_theta)
%  end
%  torque_simple= str2sym(torque_simple)'
% 
% 
