function [] = showRect(RectList,line,color)
for i = 1:length(RectList)
    Rect = RectList(i);
    x=[Rect.a1.X,Rect.a2.X,Rect.a3.X,Rect.a4.X,Rect.a1.X];
    y=[Rect.a1.Y,Rect.a2.Y,Rect.a3.Y,Rect.a4.Y,Rect.a1.Y];
    z=[Rect.a1.Z,Rect.a2.Z,Rect.a3.Z,Rect.a4.Z,Rect.a1.Z];
    plot3(x,y,z,line,'Color',color);%plot3(xt,yt,t,'-o','Color','b','MRect.arkerSize',10,'MRect.arkerFRect.aceColor','#D9FFFF')
    hold on;
end  
end

