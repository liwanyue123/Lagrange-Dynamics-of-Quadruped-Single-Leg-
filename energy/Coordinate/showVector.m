function showVector(starPlot,vec,color)
% quiver3要传入起点位置，和三个方向增量
% plot3(starPlot(1),  starPlot(2),  starPlot(3),'b','o' );
plot3(starPlot(1),  starPlot(2),  starPlot(3),'-o','color',[0 0 0],'linewidth',1);
 quiver3(starPlot(1),  starPlot(2),  starPlot(3),   vec(1),   vec(2), vec(3)  ,1,color,'LineWidth',1)  
 hold on
end

