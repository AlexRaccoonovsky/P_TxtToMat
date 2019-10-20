function CompTable=TableCompositor(PathToTxtFiles,ArrInfTable)
%Function for deriving data from .txt-files to the TableData
%%Initialize StartData
SizeOfArrTable=size(ArrInfTable);
%%Cycle of converting .txt files of list to one table
for CurrentNameNum=1:1:SizeOfArrTable
    %Current name of file
    CurrentNameFile=ArrInfTable{CurrentNameNum,1};
    CurrentNameFileStr=char(CurrentNameFile);
    %Full patch with name
    FullPatch=char(fullfile(PathToTxtFiles,CurrentNameFileStr));
    %Set transformation options
    opts = OptionsConfigurator(FullPatch);
    %Forming CompTable & append tables to it
        if (CurrentNameNum)==1
            CompTable=readtable(FullPatch,opts);
        else
            LastTable=readtable(FullPatch,opts);
            CompTable=[CompTable;LastTable];
        end
end
% Rename Names of columns CompTable
CompTable.Properties.VariableNames = {'Ticker' 'Period' 'Date' 'Time' 'OP' 'HP' 'LP' 'CP' 'Vol'};

