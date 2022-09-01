function [] = showLine(AxisList,line,color)
for i = 1:length(AxisList)
    Axis= AxisList(i);
    x=[Axis.a0.X,Axis.a1.X];
    y=[Axis.a0.Y,Axis.a1.Y];
    z=[Axis.a0.Z,Axis.a1.Z];
    plot3(x,y,z,line,'Color',color);%plot3(xt,yt,t,'-o','Color','b','MRect.arkerSize',10,'MRect.arkerFRect.aceColor','#D9FFFF')
    hold on;
end
end  
 

