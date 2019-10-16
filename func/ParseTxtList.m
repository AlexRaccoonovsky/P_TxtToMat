function InfTableOfTxtFiles=ParseTxtList(PathToTxtFiles)
% Function of parsing List of .txt-files
% Input var PathToTxtFiles - string-path to .txt-list files
% Output is structure array InfTableOfTxtFiles have next columns:
% 1. Name of file;
% 2. Name of security;
% 3. Factical interval;
% 4. Start Date;
% 5. Start Time;
% 6. Finish Date;
% 7. Finish Time;
% 8. Quantities Of Rows.
%%
% Row's counter of output var InfTableOfTxtFiles
NumRowTable=0;
% Take consist of PathToTxtFiles
TxtListFiles=dir(char(PathToTxtFiles));
% Size of List
SizeListTxt=size(TxtListFiles);

% Cycle in the list of consist PathToTxtFiles
for NumRowList=1:1:SizeListTxt
    if ((TxtListFiles(NumRowList).isdir)==0)
        %Num of string 
        NumRowTable=NumRowTable+1;
        % filling output var InfTableOfTxtFiles 
        InfTableOfTxtFiles(NumRowTable)=GetInfFromTxtFile(PathToTxtFiles,TxtListFiles(NumRowList).name);
    end
end
    
