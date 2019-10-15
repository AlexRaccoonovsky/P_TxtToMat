function CompTable=TableCompositor(PathToTxtFiles,ArrInfTable)
%Functions for deriving data from .txt-files to the TableData

%%Initialize StartData

SizeOfArrTable=size(ArrInfTable);
% options for Convering functions
opts = detectImportOptions('airlinesmall.csv');

%%Cycle of treatment .txt files list
for CurrentNameNum=1:1:SizeOfArrTable
    %Current name of file
    CurrentNameFile=ArrInfTable{CurrentNameNum,1};
    CurrentNameFileStr=char(CurrentNameFile);
    %Full patch with name
    FullPatch=strcat(char(PathToTxtFiles),CurrentNameFileStr);
    %CompTable=FullPatch
    CompTable=readtable(FullPatch,opts);
end

