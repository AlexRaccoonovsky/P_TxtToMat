function Report=SaverTable(PathToTxtFiles,CompTable)
% function for save table to .mat-file

% Creating Name of BigData
% Example: BD_NameSec_period_StartDate_FinishDate
FileName=strcat('BD_',CompTable{1,'Ticker'},'_',CompTable{1,'Period'},...
    '_',datestr(CompTable{1,'Date'}),'_',datestr(CompTable{end,'Date'}),'.mat');
% Creating FullPath string
FullPath=fullfile(char(PathToTxtFiles),char(FileName));
% Save with using path of .txt location 
save (FullPath, 'CompTable');
%Report with string of path to .mat file
Report=FullPath;



