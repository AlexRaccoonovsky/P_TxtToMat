function CompTable=TableCompositor(PathToTxtFiles,ArrInfTable)
%Functions for deriving data from .txt-files to the TableData

%%Initialize StartData

SizeOfArrTable=size(ArrInfTable);
% options for Convering functions
%opts = OptionsConfigurator();

%%Cycle of treatment .txt files list
for CurrentNameNum=1:1:2%SizeOfArrTable
    %Current name of file
    CurrentNameFile=ArrInfTable{CurrentNameNum,1};
    CurrentNameFileStr=char(CurrentNameFile);
    %Full patch with name
    FullPatch=char(fullfile(PathToTxtFiles,CurrentNameFileStr));
    opts = OptionsConfigurator(FullPatch);
        
    disp([opts.VariableNames' opts.VariableTypes'])
    %CompTable=FullPatch
    %CompTable=readtable(FullPatch,'Format','%s %s %{yyyyMMdd}D %{HHmmSS}D %f %f %f %f %f');
    CompTable=readtable(FullPatch,opts)
end

