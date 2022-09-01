function [K_sym_str] = subsStr(K_sym_begin,str_course,str_target)
% 将一个符号函数中的某个部分替换成另一个符号，暂时返回一个字符串，
% 因为字符串转符号时除非之前函数中的符号是全局变量，否则不知道怎么分
K_sym_str=char(K_sym_begin);

for k=1:max(size(str_course))
     K_sym_str=strrep(K_sym_str,str_course(k),str_target(k));
end

% K_sym_str=strrep(K_sym_str,str_course(1),str_target(1));
% K_sym_str=strrep(K_sym_str,str_course(2),str_target(2));
% K_sym_str=strrep(K_sym_str,str_course(3),str_target(3));
% % K_sym_end=simplify(str2sym(K_sym_str));
end

