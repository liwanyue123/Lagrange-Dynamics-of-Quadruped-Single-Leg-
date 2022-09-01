function [ R] = genWorld2BiMetrix(whichFoot,isInverse)

global LB1  LB2 LB3 L1  theta_B1 theta_B2 theta_R theta_P theta_1  H_Body
%
% T_World2Body=genWorld2BodyMetrix();
%
% T_Body2Bi=Body2B(whichOne);
% T_World2Bi= T_World2Body* T_Body2Bi;
if (isInverse == false)%世界到肩膀
    
    R1 = genWorld2BodyMetrix(false);%世界到身体
    R2 = genBody2biMetrix(whichFoot, false);%身体到肩膀
    
    
    
elseif (isInverse == true)%肩膀到世界
    
    R1 = genBody2biMetrix(whichFoot, true);%肩膀到身体
    R2 = genWorld2BodyMetrix(true);%身体到世界
end
R = R1 * R2;

end