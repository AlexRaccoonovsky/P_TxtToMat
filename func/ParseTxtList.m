function InfTableOfTxtFiles=ParseTxtList(PathToTxtFiles)
% Function of parsing List of .txt-files
% Input var PathToTxtFiles - string-path to .txt-list files
%InfTableOfTxtFiles is structure array have next columns:
% 1. Name of file;
% 2. Name of security;
% 3. Factical interval;
% 4. Start Date;
% 5. Start Time;
% 6. Finish Date;
% 7. Finish Time.
NumRowTable=0;
TxtListFiles=dir(char(PathToTxtFiles));
SizeListTxt=size(TxtListFiles);
for NumRowList=1:1:SizeListTxt
    if ((TxtListFiles(NumRowList).isdir)==0)
        NumRowTable=NumRowTable+1;
        InfTableOfTxtFiles(NumRowTable).FileName=TxtListFiles(NumRowList).name;
        InfFromFile=GetInfFromFile(TxtListFiles(NumRowList).name);
        InfTableOfTxtFiles(NumRowTable).SecName=GetInfFromFile(TxtListFiles(NumRowList).name);
    end
end
    
% InfTableOfTxtFiles=TxtListFiles;
    
