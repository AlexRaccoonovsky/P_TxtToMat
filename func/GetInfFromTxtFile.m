function InfFromFile=GetInfFromTxtFile(PathToTxtFiles,FileName)
FullPatch=strcat(char(PathToTxtFiles),'\',FileName);
%Symbol for identification first string
SymOfFirstStr001='<';
%OpeningFile
IDFile = fopen(FullPatch,'r')
Time1=0;
Time2=0;

while feof(IDFile)==0
    %get string from .txt file
    StringFromFile=fgetl(IDFile);
    IsFirstString=contains(StringFromFile,SymOfFirstStr001);

    switch IsFirstString
        case false
        CellStringFromFile=strsplit(StringFromFile,',');
        InfFromFile.SecName=string(CellStringFromFile{1});    
    	InfFromFile.Interval=string(CellStringFromFile{2});
        otherwise
        continue;
    end  
end
fclose(IDFile);

