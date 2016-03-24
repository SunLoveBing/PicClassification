clear all;
close all;
clc;

targetPath = 'E:\New Test Code\����С�ര - ����';
picPath = 'E:\New Test Code\temp - ����';
destination = 'E:\New Test Code\temp - ����';

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