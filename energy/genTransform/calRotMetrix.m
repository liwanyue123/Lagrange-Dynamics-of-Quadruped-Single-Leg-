function [R1] = calRotMetrix(I1,theta)
%使用方法，先在外面定义好符号变量theta，之后才能调用这个s

if theta(1)=='-'
    t = sym(theta(2:end))*(-1);
else
    t = sym(theta);
end

c = sym(cos(t));
s = sym(sin(t));

Rx = [1,0,0,0;
      0,c,-s,0;
      0,s,c,0;
      0,0,0,1];
  
Ry = [c,0,s,0; 
      0,1,0,0;
     -s,0,c,0;
      0,0,0,1];
  
Rz = [c,-s,0,0; 
      s,c,0,0; 
      0,0,1,0;
      0,0,0,1];

R1 = eye(4);

if I1 == 'X'
    R1 = Rx;
elseif I1 == 'Y'
    R1 = Ry;
elseif I1 == 'Z'
    R1 = Rz;
end


end

