function [outCell] = strReplace(srcCell,desCell,beginStr,endStr)
outPointer = 0;
srcCellSize = size(srcCell);
desCellSize = size(desCell);

endRowNum = strmatch(beginStr,srcCell);%起始替换内容位置
range = 1 : endRowNum;
for i = range
    outPointer = outPointer + 1;
    outCell{outPointer} = srcCell{i};    %先抄下来srcCell需要替换内容前的行
end

range = 1 : desCellSize;
for i = range
    outPointer = outPointer + 1;
    outCell{outPointer} = desCell{i};   %接着写要替换的行
end

beginRowNum = strmatch(endStr,srcCell); %替换内容结束位置
range = beginRowNum : srcCellSize;
for i = range
    outPointer = outPointer + 1;
    outCell{outPointer} = srcCell{i};   %接着抄下来剩余的行
end
outCell = outCell'
 