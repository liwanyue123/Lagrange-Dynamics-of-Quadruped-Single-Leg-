 
 
function [funcAfterDiff] = dif(varargin)

%输出的是个字符串而已
narginchk(1,2)
func= varargin{1};


if nargin==1%对时间求全导
    
    %为了能对t求导，输入的要是A(t),偏导传入A，A(t)都行
    funcAfterDiff=diff(func);
elseif nargin==2%求偏导，直接求就好了
    %消除时间
    variable= varargin{2};
    func=subTime(func) ;
    variable=subTime(variable) ;
    %偏导
    funcAfterDiff=diff(func,variable);
     %增加时间
%     funcAfterDiff=addTime(funcAfterDiff)
end
funcAfterDiff=simplify(funcAfterDiff);
end


