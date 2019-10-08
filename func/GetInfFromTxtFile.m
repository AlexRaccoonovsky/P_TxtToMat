function InfFromFile=GetInfFromTxtFile(PathToTxtFiles,FileName)
%Initializing output StructArray
InfFromFile=struct('FileName',FileName,'SecName','','Interval','',...
     'StartDate','','StartTime','','FinishDate','','FinishTime','','QuanOfRow',[]);
%String of full path to file
FullPatch=strcat(char(PathToTxtFiles),'\',FileName);
%Symbol for identification first string
SymOfFirstStr001='<';
%OpeningFile
IDFile = fopen(FullPatch,'r');
%Quantuty of rows in file
QuanOfRow=0;
% Time1=0;
% Time2=0;

while feof(IDFile)==0
    %get string from .txt file
    StringFromFile=fgetl(IDFile);
    IsFirstString=contains(StringFromFile,SymOfFirstStr001);
    CellStringFromFile=strsplit(StringFromFile,',');
    
    switch IsFirstString
        case false
            QuanOfRow=QuanOfRow+1;
            if (isempty(InfFromFile.SecName))
                InfFromFile.SecName=string(CellStringFromFile{1});    
                InfFromFile.Interval=string(CellStringFromFile{2});
                InfFromFile.StartDate=string(CellStringFromFile{3});
                InfFromFile.StartTime=string(CellStringFromFile{4});
            else
                InfFromFile.FinishDate=string(CellStringFromFile{3});
                InfFromFile.FinishTime=string(CellStringFromFile{4});
                InfFromFile.QuanOfRow=QuanOfRow;
            end

        otherwise
        continue;
    end  
end
fclose(IDFile);

