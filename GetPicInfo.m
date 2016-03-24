function [ PicName,PicNum,jpgpath ] = GetPicInfo( path )

dirjpg = dir(strcat(path,'\*.jpg'));
PicNum = length(dirjpg);
PicName = cell(1,PicNum);
jpgpath = cell(1,PicNum);

for k = 1 : PicNum
    PicName{k} = dirjpg(k).name;
    jpgpath{k} = strcat(path,'\',PicName{k});
end
end

