function  R =genBi2AbadMetrix(whichFoot)%身体到肩膀
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
%-------------omiga1---------------
%X方向旋转theta_1
R1=calRotMetrix('X',theta_1(t));

%Y方向平移-l1
R2=calTranMetrix(0,-l1,0);

R=R1*R2;

% 
% 
% %-------------omiga2---------------
% %--------------Hx---------------
%  %X方向旋转theta_1
% R1=calRotMetrix('X',theta_1(t));
% %--------------Hy---------------
%  %Y方向平移-l1
% R2=calTranMetrix(0,-l1,0);
%  %Y方向旋转theta_2
% R3=calRotMetrix('Y',theta_2(t));
%  %--------------Knee---------------
%  %Z方向平移-L2
% R4=calTranMetrix(0,0,-L2);
% 
% R=R1*R2*R3*R4;
% omiga_L2=calOmigaFromRotMat(R);
% omiga_L2=simplify(WordReplace(omiga_L2))
% 
% %-------------omiga3---------------
% %--------------Hx---------------
%  %X方向旋转theta_1
% R1=calRotMetrix('X',theta_1(t));
% %--------------Hy---------------
%  %Y方向平移-l1
% R2=calTranMetrix(0,-l1,0);
%  %Y方向旋转theta_2
% R3=calRotMetrix('Y',theta_2(t));
%  %--------------Knee---------------
%  %Z方向平移-L2
% R4=calTranMetrix(0,0,-L2);
% 
%  %Y方向旋转theta_3
% R5=calRotMetrix('Y',theta_3(t));
% %--------------Foot---------------
%  %Z方向平移-L3
% R6=calTranMetrix(0,0,-L3);
% R=R1*R2*R3*R4*R5*R6;
% omiga_L3=calOmigaFromRotMat(R);
% omiga_L3=simplify(WordReplace(omiga_L3))




end
