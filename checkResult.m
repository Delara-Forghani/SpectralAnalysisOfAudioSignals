function checkResult(folderAddress)
numOfFiles=dir(folderAddress);
disp(numOfFiles(3).name)
[rows columns] = size(numOfFiles);
disp(strcat(folderAddress,'\',numOfFiles(3).name))
malecount=0;
femalecount=0;
for n=3:rows
    result=freqAnalysis(strcat(folderAddress,'\',numOfFiles(n).name),n-2);
    disp(size(result))
    if abs(result - 122) < abs(result - 212)
        movefile(strcat(folderAddress,'\',numOfFiles(n).name),strcat(folderAddress,'\','male',num2str(malecount),'.mp3'));
        malecount= malecount+1;
    elseif abs(result - 212) < abs(result - 122)   
        movefile(strcat(folderAddress,'\',numOfFiles(n).name),strcat(folderAddress,'\','female',num2str(femalecount),'.mp3'));
        femalecount= femalecount+1;
        
    end
end