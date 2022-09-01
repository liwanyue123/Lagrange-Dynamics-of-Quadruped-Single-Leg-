function  R = b2Foot(whichFoot)%使用等效腿,肩膀到足端
L1=sym('L1');
L2_f=sym('L2_f');
theta_1=sym('theta_1');
theta_2_f=sym('theta_2_f');
 
%第二第三条腿是-l1 
if whichFoot==1
     l1=L1  ;
elseif whichFoot==2
     l1=-L1 ;
elseif whichFoot==3
     l1=-L1 ;
elseif whichFoot==4
     l1=L1  ;  
end  

%--------------数值运算---------------
 %X方向旋转theta1
R1=calRotMetrix('X',theta_1);

 %Y方向平移-l1
R2=calTranMetrix(0,-l1,0);
 %Y方向旋转theta2
R3=calRotMetrix('Y',theta_2_f);
 
 %Z方向平移-L2
R4=calTranMetrix(0,0,-L2_f);

R=R1*R2*R3*R4;
end

