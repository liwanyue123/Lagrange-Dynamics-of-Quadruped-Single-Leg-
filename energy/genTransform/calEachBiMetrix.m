function [R] = calEachBiMetrix(whichOne)
global LB1  LB2 LB3 L1  theta_B1 theta_B2 theta_B3 theta_R theta_P theta_1  H_Body

switch( whichOne)
    case 1
        %计算肩膀的y轴方向和z轴方向
        %%%%%%%%%%第一条肩膀%%%%%%%%%%%%%
        %--------------B2b---------------
        %Z方向旋转thetaB1
        R1=calRotMetrix('Z','theta_B1');
        %X方向平移LB1
        R2=calTranMetrix('LB1',0,0);
        %Y方向旋转thetaB2
        R3=calRotMetrix('Y','theta_B2');
        %X方向平移LB2,Y方向平移-LB3
        R4=calTranMetrix('LB2','-LB3',0);
        
      
        R=R1*R2*R3*R4;

    case 2
        %%%%%%%%%%第二条肩膀%%%%%%%%%%%%%Lb3=-LB3  l1=-L1
        %--------------B2b---------------
        %Z方向旋转thetaB1
        R1=calRotMetrix('Z','theta_B1');
        %X方向平移LB1
        R2=calTranMetrix('LB1',0,0);
        %Y方向旋转thetaB2
        R3=calRotMetrix('Y','theta_B2');
        %X方向平移LB2,Y方向平移-LB3
        R4=calTranMetrix('LB2','LB3',0);
        
       R=R1*R2*R3*R4;
    case 3
        %%%%%%%%%%第三条肩膀%%%%%%%%%%%%%Lb3=-LB3 l1=-L1
        %--------------B2b---------------
        %X方向平移-LB1
        R2=calTranMetrix('-LB1',0,0);
        %Y方向旋转thetaB3
        R3=calRotMetrix('Y','theta_B3');
        %X方向平移-LB2,Y方向平移-LB3
        R4=calTranMetrix('-LB2','LB3',0);
        
       R=R2*R3*R4;
        
    case 4
        %%%%%%%%%%第四条肩膀%%%%%%%%%%%%%
        %--------------B2b---------------
        %X方向平移-LB1
        R2=calTranMetrix('-LB1',0,0);
        %Y方向旋转thetaB3
        R3=calRotMetrix('Y','theta_B3');
        %X方向平移-LB2,Y方向平移-LB3
        R4=calTranMetrix('-LB2','-LB3',0);
        
       R=R2*R3*R4;
end
end

