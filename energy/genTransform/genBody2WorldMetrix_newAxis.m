function [R] = genBody2WorldMetrix_newAxis()%报废！！！！！！！！！！！！！！！！！！
%以梯形z轴在水平面上的投影来旋转，产生俯仰角
syms LB1  LB2 LB3 L1  theta_B1 theta_B2 theta_B3 theta_R theta_P theta_1  H_Body

 
T_B5toT5 =genBody2TrapMetrix(false);


 %Y方向旋转thetaB2
R3=calRotMetrix('X',-theta_R);
 %Y方向旋转thetaB2
R4=calRotMetrix('Y',-theta_P);

T_T5toB3=R3*R4;

T_T3toB3=genBody2TrapMetrix(true);


 %X方向平移LB1
R1=calTranMetrix(0,0,-LB2*sin(theta_B2) );
 %Z方向平移H_Body 
R2=calTranMetrix(0,0,-H_Body );




T_B3toW=R1*R2;

R=T_B5toT5*T_T5toB3*T_T3toB3*T_B3toW;

end



