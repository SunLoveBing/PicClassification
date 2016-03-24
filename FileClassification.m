clear all;
close all;
clc;

targetPath = 'E:\New Test Code\有无小侧窗 - 副本';
picPath = 'E:\New Test Code\temp - 副本';
destination = 'E:\New Test Code\temp - 副本';

[ tarPicName,tarPicNum,folderName,folderNum ] = GetFileInfo( targetPath );
[ PicName,PicNum,jpgpath ] = GetPicInfo( picPath );

cd(destination);
for k = 1 : folderNum
    mkdir(folderName{k});
    TarPath = strcat(destination,'\',folderName{k});
    for m = 1 : PicNum
        for n = 1 : length(tarPicName(k,:))
            if strcmp(PicName{m},tarPicName{k,n})
                movefile(jpgpath{m},TarPath);
                continue
            end
        end
    end
end