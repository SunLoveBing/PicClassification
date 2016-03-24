function [ PicName,PicNum,folderName,folderNum ] = GetFileInfo( path )

dirpath = dir(path);
folderNum = length(dirpath) - 2;

folderName = cell(1,folderNum);%存放图片的文件夹名
for k = 1 : folderNum
    folderName{k} = dirpath(k+2).name;
end

PicNum = 1;
for k = 1 : folderNum
    jpgpath = dir(strcat(path,'\',folderName{k},'\*.jpg'));
    for m = 1 : length(jpgpath)
        PicName{k,m} = jpgpath(m).name;
        PicNum = PicNum + 1;
    end
end
PicNum = PicNum - 1;
end

