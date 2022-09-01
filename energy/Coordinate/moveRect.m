

function [varargout] = moveRect(Rect,delatX,delatY,delatZ)
 

for k=1:nargout
      varargout{k} =moveRect4Plot(Rect(k) ,delatX,delatY,delatZ );
end


function [RectAfterMove] = moveRect4Plot(Rect,delatX,delatY,delatZ)

%将一个矩形的四个点都绕直线L旋转theta
RectAfterMove.a1 = movePlot(Rect.a1,delatX,delatY,delatZ );
RectAfterMove.a2 = movePlot(Rect.a2,delatX,delatY,delatZ );
RectAfterMove.a3 = movePlot(Rect.a3,delatX,delatY,delatZ );
RectAfterMove.a4 = movePlot(Rect.a4,delatX,delatY,delatZ );


