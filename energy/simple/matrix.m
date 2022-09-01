function [mat] = matrix(mat_cell)
%使用eval时系统会调用这里。。。

size_mat=size(mat_cell) ;
row=size_mat(2);
if(class(mat_cell)==sym('symfun'))
    out='输入函数symfun是一个整体呀！当成1*3了'
    %     mat=mat_cell*eye(3);
     syms t;
    mat=mat_cell(t);%symfun 你要往他的未知数里传一个东西才会变成普通的数
end
%向量



if(row>4)%矩阵
    row=row^(1/2) ;
    t=1;
    for i=1:row
        mat(i,1:row)=mat_cell(t:t+row-1);
        t=t+row;
    end
else
    mat(1:row)=mat_cell(1:row);
    mat=mat';
    
end


%为了使用eval函数，重写的

end

