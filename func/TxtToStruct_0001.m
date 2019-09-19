function StructArray = TxtToStruct_0001(TxtPatch)
% TxtToStruct_0001 -function for extract information from .txt file to
% Structure Array
% TxtPatch - .txt patch
% StructArray - resulting Structure Array

%Symbol for identification first string
SymOfFirstStr001='<';
%OpeningFile
IDFile = fopen(TxtPatch,'r')
RowInStruct=1;
while feof(IDFile)==0
    %get string from .txt file
    StringFromFile=fgetl(IDFile);
    IsFirstString=contains(StringFromFile,SymOfFirstStr001);
    
    switch IsFirstString
        case false
            %
            StringStruct=StructFromString(StringFromFile);
            %Adding information in StructArray
            StructArray(RowInStruct).Date=StringStruct.Date;
            StructArray(RowInStruct).Time=StringStruct.Time;
            StructArray(RowInStruct).OP=StringStruct.OP;
            StructArray(RowInStruct).HP=StringStruct.HP;
            StructArray(RowInStruct).LP=StringStruct.LP;
            StructArray(RowInStruct).CP=StringStruct.CP;
            StructArray(RowInStruct).Volume=StringStruct.Volume;
            %
        RowInStruct=RowInStruct+1;
    	otherwise
        continue;
    end  
end
fclose(IDFile);

function StringStruct=StructFromString(StringFromFile)
%Create Cell Array from input string by delimeter
CellArrayHelp=strsplit(StringFromFile,',');
StringStruct.Date=CellArrayHelp{3};
StringStruct.Time=CellArrayHelp{4};
StringStruct.OP=str2num(CellArrayHelp{5});
StringStruct.HP=str2num(CellArrayHelp{6});
StringStruct.LP=str2num(CellArrayHelp{7});
StringStruct.CP=str2num(CellArrayHelp{8});
StringStruct.Volume=str2num(CellArrayHelp{9});