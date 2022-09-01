function [mathematica_str] = matlab2Mathematica(matlab_str)
str=matlab_str

str=regexprep(str,'[','{');
str=regexprep(str,']','}');

%sin,cos圆括号转成方括号
str=regexprep(str,'sin\((.*?)\)','Sin[$1]');
str=regexprep(str,'cos\((.*?)\)','Cos[$1]');
%导数theta_1_dd变成 D[theta1[t],{t,2}]
str=regexprep(str,'theta_(.)_dd','D[theta$1[t],{t,2}]');
%导数theta_1_d变成 D[theta1[t],t]
str=regexprep(str,'theta_(.)_d','D[theta$1[t],t]');
%s符号适应theta_1变成theta1
str=regexprep(str,'theta_(.)','theta$1');

mathematica_str=str;
end

