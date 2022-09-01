 



function [varargout] = rotateLines(Lines,axis,theta)

for k=1:nargout
      varargout{k} = rotateLine2Plot(Lines(k) ,axis.a0,axis.a1,theta );
end

function [LineAfterRot] = rotateLine2Plot(Line,L0,L1,theta)

%将一个矩形的四个点都绕直线L旋转theta
LineAfterRot.a0 = rotate(Line.a0,L0,L1,theta );
LineAfterRot.a1 = rotate(Line.a1,L0,L1,theta );
 

