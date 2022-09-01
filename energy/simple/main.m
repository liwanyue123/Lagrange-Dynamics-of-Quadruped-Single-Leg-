%matheMatica 显示公式更符合人类的习惯，所以在简单的化简之后，转到matheMatica显示
clear
syms Ixx1 Iyy1 Izz1 Ixx2 Iyy2 Izz2 Ixx3 Iyy3 Izz3 real
syms L1 L2 L3    a1 a2 a3 b1 real
syms g m1 m2 m3   real
syms theta_1 theta_2 theta_3 t real
syms theta_1_d theta_2_d theta_3_d   real
syms theta_1_dd theta_2_dd theta_3_dd   real
syms Ixx1 Ixy1 Ixz1 Iyx1   Iyy1   Iyz1 Izx1  Izy1 Izz1 real



Q =[Ixx1*theta_1_dd - g*(L1*m3*cos(theta_1) + L1*a1*m1*cos(theta_1) + L1*b1*m2*cos(theta_1) - L2*m3*cos(theta_2)*sin(theta_1) - L2*a2*m2*cos(theta_2)*sin(theta_1) - L3*a3*m3*cos(theta_2)*cos(theta_3)*sin(theta_1) + L3*a3*m3*sin(theta_1)*sin(theta_2)*sin(theta_3)) + (Ixx2*theta_1_dd)/2 + (Ixx3*theta_1_dd)/2 + (Izz2*theta_1_dd)/2 + (Izz3*theta_1_dd)/2 + (Ixx2*theta_1_dd*cos(2*theta_2))/2 - (Izz2*theta_1_dd*cos(2*theta_2))/2 + (Ixx3*theta_1_dd*cos(2*theta_2 + 2*theta_3))/2 - (Izz3*theta_1_dd*cos(2*theta_2 + 2*theta_3))/2 + L1^2*m3*theta_1_dd + (L2^2*m3*theta_1_dd)/2 + (L2^2*m3*theta_1_dd*cos(2*theta_2))/2 - (Ixx3*theta_1_d*sin(2*theta_2 + 2*theta_3)*(2*theta_2_d + 2*theta_3_d))/2 + (Izz3*theta_1_d*sin(2*theta_2 + 2*theta_3)*(2*theta_2_d + 2*theta_3_d))/2 + L1^2*a1^2*m1*theta_1_dd + (L2^2*a2^2*m2*theta_1_dd)/2 + (L3^2*a3^2*m3*theta_1_dd)/2 + L1^2*b1^2*m2*theta_1_dd - Ixx2*theta_1_d*theta_2_d*sin(2*theta_2) + Izz2*theta_1_d*theta_2_d*sin(2*theta_2) - L1*L2*m3*theta_2_d^2*cos(theta_2) + (L3^2*a3^2*m3*theta_1_dd*cos(2*theta_2 + 2*theta_3))/2 - L2^2*m3*theta_1_d*theta_2_d*sin(2*theta_2) - L1*L2*m3*theta_2_dd*sin(theta_2) + (L2^2*a2^2*m2*theta_1_dd*cos(2*theta_2))/2 + L2*L3*a3*m3*theta_1_dd*cos(theta_3) - (L3^2*a3^2*m3*theta_1_d*sin(2*theta_2 + 2*theta_3)*(2*theta_2_d + 2*theta_3_d))/2 + L2*L3*a3*m3*theta_1_dd*cos(2*theta_2 + theta_3) - L2^2*a2^2*m2*theta_1_d*theta_2_d*sin(2*theta_2) - L1*L3*a3*m3*theta_2_dd*sin(theta_2 + theta_3) - L1*L3*a3*m3*theta_3_dd*sin(theta_2 + theta_3) - L1*L3*a3*m3*theta_2_d*cos(theta_2 + theta_3)*(theta_2_d + theta_3_d) - L1*L3*a3*m3*theta_3_d*cos(theta_2 + theta_3)*(theta_2_d + theta_3_d) - L1*L2*a2*b1*m2*theta_2_dd*sin(theta_2) - L2*L3*a3*m3*theta_1_d*theta_3_d*sin(theta_3) - L1*L2*a2*b1*m2*theta_2_d^2*cos(theta_2) - L2*L3*a3*m3*theta_1_d*sin(2*theta_2 + theta_3)*(2*theta_2_d + theta_3_d);
    Iyy2*theta_2_dd + Iyy3*theta_2_dd + Iyy3*theta_3_dd + (Ixx2*theta_1_d^2*sin(2*theta_2))/2 - (Izz2*theta_1_d^2*sin(2*theta_2))/2 + L2^2*m3*theta_2_dd + (Ixx3*theta_1_d^2*sin(2*theta_2 + 2*theta_3))/2 - (Izz3*theta_1_d^2*sin(2*theta_2 + 2*theta_3))/2 + (L2*g*m3*sin(theta_1 + theta_2))/2 + (L2^2*m3*theta_1_d^2*sin(2*theta_2))/2 - (L2*g*m3*sin(theta_1 - theta_2))/2 + L2^2*a2^2*m2*theta_2_dd + L3^2*a3^2*m3*theta_2_dd + L3^2*a3^2*m3*theta_3_dd + (L3*a3*g*m3*sin(theta_1 + theta_2 + theta_3))/2 + (L2^2*a2^2*m2*theta_1_d^2*sin(2*theta_2))/2 + (L3*a3*g*m3*sin(theta_2 - theta_1 + theta_3))/2 + (L3^2*a3^2*m3*theta_1_d^2*sin(2*theta_2 + 2*theta_3))/2 + (L2*a2*g*m2*sin(theta_1 + theta_2))/2 - L1*L2*m3*theta_1_dd*sin(theta_2) - (L2*a2*g*m2*sin(theta_1 - theta_2))/2 + 2*L2*L3*a3*m3*theta_2_dd*cos(theta_3) + L2*L3*a3*m3*theta_3_dd*cos(theta_3) - L2*L3*a3*m3*theta_3_d^2*sin(theta_3) + L2*L3*a3*m3*theta_1_d^2*sin(2*theta_2 + theta_3) - L1*L3*a3*m3*theta_1_dd*sin(theta_2 + theta_3) - L1*L3*a3*m3*theta_1_d*cos(theta_2 + theta_3)*(theta_2_d + theta_3_d) + L1*L3*a3*m3*theta_1_d*theta_2_d*cos(theta_2 + theta_3) + L1*L3*a3*m3*theta_1_d*theta_3_d*cos(theta_2 + theta_3) - L1*L2*a2*b1*m2*theta_1_dd*sin(theta_2) - 2*L2*L3*a3*m3*theta_2_d*theta_3_d*sin(theta_3);
    Iyy3*theta_2_dd + Iyy3*theta_3_dd + (Ixx3*theta_1_d^2*sin(2*theta_2 + 2*theta_3))/2 - (Izz3*theta_1_d^2*sin(2*theta_2 + 2*theta_3))/2 + L3^2*a3^2*m3*theta_2_dd + L3^2*a3^2*m3*theta_3_dd + (L3*a3*g*m3*sin(theta_1 + theta_2 + theta_3))/2 + (L3*a3*g*m3*sin(theta_2 - theta_1 + theta_3))/2 + (L3^2*a3^2*m3*theta_1_d^2*sin(2*theta_2 + 2*theta_3))/2 + L2*L3*a3*m3*theta_2_dd*cos(theta_3) + (L2*L3*a3*m3*theta_1_d^2*sin(theta_3))/2 + L2*L3*a3*m3*theta_2_d^2*sin(theta_3) + (L2*L3*a3*m3*theta_1_d^2*sin(2*theta_2 + theta_3))/2 - L1*L3*a3*m3*theta_1_dd*sin(theta_2 + theta_3) - L1*L3*a3*m3*theta_1_d*cos(theta_2 + theta_3)*(theta_2_d + theta_3_d) + L1*L3*a3*m3*theta_1_d*theta_2_d*cos(theta_2 + theta_3) + L1*L3*a3*m3*theta_1_d*theta_3_d*cos(theta_2 + theta_3)];



Ep_dp =[- g*m2*(L1*b1*cos(theta_1) - L2*a2*cos(theta_2)*sin(theta_1)) - g*m3*(L1*cos(theta_1) - L2*cos(theta_2)*sin(theta_1) + L3*a3*(sin(theta_1)*sin(theta_2)*sin(theta_3) - cos(theta_2)*cos(theta_3)*sin(theta_1))) - L1*a1*g*m1*cos(theta_1);
g*cos(theta_1)*(L2*m3*sin(theta_2) + L3*a3*m3*sin(theta_2 + theta_3) + L2*a2*m2*sin(theta_2));
L3*a3*g*m3*sin(theta_2 + theta_3)*cos(theta_1)];



theta_dd=[theta_1_dd ;theta_2_dd;theta_3_dd];
theta_d=[theta_1_d ;theta_2_d;theta_3_d];
theta=[theta_1;theta_2 ;theta_3];






Q_col=collect(Q,theta_dd);%先提取一下，不然matlab不会做
D=equationsToMatrix(Q_col,theta_dd)%二阶导的系数
%
Q_col=simplify( Q_col-D*theta_dd - Ep_dp);%把含有二阶导的部分,和重力势能部分去掉


Q_col=collect(Q_col,theta_d);

C=equationsToMatrix_NonLinear(Q_col, theta_d)

G=Ep_dp

for i=1:3
    for j=1:3
      D_vs(i,j)=matlab2VSCode(char(D(i,j)));
      str=['D('  num2str(i)  ','  num2str(j) ')= '];
      disp(str)
      disp( D_vs(i,j))
      
    end
end

for i=1:3
    for j=1:3
      C_vs(i,j)=matlab2VSCode(char(C(i,j)));
      str=['C('  num2str(i)  ','  num2str(j) ')= '];
      disp(str)
      disp( C_vs(i,j))
      
    end
end


for i=1:3
    j=1;
      G_vs(i,j)=matlab2VSCode(char(G(i,j)));
      str=['G('  num2str(i)  ','  num2str(j) ')= '];
      disp(str)
      disp( G_vs(i,j))
      

end

