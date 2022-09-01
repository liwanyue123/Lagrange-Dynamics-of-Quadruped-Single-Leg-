function  R =genBi2HipMetrix(whichFoot )%身体到肩膀
syms L1 L2 L3   real
syms theta_1(t) theta_2(t) theta_3(t) t real
l1=sym('L1');

%第二第三条腿是-l1 
if whichFoot==1
     l1=l1  ;
elseif whichFoot==2
     l1=-l1 ;
elseif whichFoot==3
     l1=-l1 ;
elseif whichFoot==4
     l1=l1  ;  
end  

 
%第二第三条腿是-l1
 
 
%-------------omiga2---------------
%--------------Hx---------------
 %X方向旋转theta_1
R1=calRotMetrix('X',theta_1(t));
%--------------Hy---------------
 %Y方向平移-l1
R2=calTranMetrix(0,-l1,0);
 %Y方向旋转theta_2
R3=calRotMetrix('Y',theta_2(t));

R=R1*R2*R3;
 


end
