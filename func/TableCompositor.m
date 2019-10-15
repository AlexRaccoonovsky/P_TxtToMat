function CompTable=TableCompositor(PathToTxtFiles,ArrInfTable)
%Functions for deriving data from .txt-files to the TableData

%%Initialize StartData
SizeOfArrTable=size(ArrInfTable);

%%Cycle of treatment .txt files list
for CurrentNameNum=1:1:SizeOfArrTable
    %Current name of file
    CurrentNameFile=ArrInfTable{CurrentNameNum,1};
    FullPatch=strcat(char(PathToTxtFiles),cellstr(CurrentNameFile));
    CompTable=FullPatch
end

