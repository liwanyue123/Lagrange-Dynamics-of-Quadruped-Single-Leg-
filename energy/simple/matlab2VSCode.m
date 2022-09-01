function [VSCode_str] = matlab2VSCode(matlab_str)

str_theta={'L1','L2','L3','a1','a2','a3','b1'};


            %制造要替换的源词汇和目标词汇
    for k=1:max(size(str_theta))
        word_t='A^2';
        word_symbol='A*A';
        str_course(k)=strrep(word_t,'A',str_theta(k));
        str_target(k)=strrep(word_symbol,'A',str_theta(k));
    end
    VSCode_str = subsStr(matlab_str,str_course,str_target);
    

end

