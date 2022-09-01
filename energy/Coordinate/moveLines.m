
function [varargout] = moveLines(Lines,delatX,delatY,delatZ)

for k=1:nargout%要求输出的个数
      varargout{k} = moveLine2Plot(Lines(k) ,delatX,delatY,delatZ );
end

function [LineAfterMove] = moveLine2Plot(Line,delatX,delatY,delatZ)

%将一个矩形的四个点都绕直线L旋转theta
LineAfterMove.a0 = movePlot(Line.a0,delatX,delatY,delatZ );
LineAfterMove.a1 = movePlot(Line.a1,delatX,delatY,delatZ );
 

