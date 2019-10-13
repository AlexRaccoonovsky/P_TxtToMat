function InfFromFile=GetInfFromTxtFile(PathToTxtFiles,FileName)
% Initializing output StructArray
InfFromFile=struct('FileName',FileName,'SecName','','Interval','',...
     'StartDate','','StartTime','','FinishDate','','FinishTime','','QuanOfRow',[]);
% String of full path to file
FullPatch=strcat(char(PathToTxtFiles),'\',FileName);
% Symbol for identification first string
SymOfFirstStr001='<';
% Initialiszation var Quantuty of rows in file
QuanOfRow=0;
% OpeningFile
IDFile = fopen(FullPatch,'r');
%% linear searcher of Information inside .txt-file 
        while feof(IDFile)==0
            %get string from .txt file
            StringFromFile=fgetl(IDFile);
            % check of First string with using SymOfFirstStr001
            IsFirstString=contains(StringFromFile,SymOfFirstStr001);
            % Splitting of string
            CellStringFromFile=strsplit(StringFromFile,',');
            switch IsFirstString
                % Typical string inside .txt file
                case false
                    % Row's counter (for output var)
                    QuanOfRow=QuanOfRow+1;
                        % Pull information about: SecName, Interval, StartDate, StartTime 
                        if (isempty(InfFromFile.SecName))
                            InfFromFile.SecName=string(CellStringFromFile{1});    
                            InfFromFile.Interval=string(CellStringFromFile{2});
                            InfFromFile.StartDate=string(CellStringFromFile{3});
                            InfFromFile.StartTime=string(CellStringFromFile{4});
                        % Cycling observer of information about currently
                        % string
                        else
                            InfFromFile.FinishDate=string(CellStringFromFile{3});
                            InfFromFile.FinishTime=string(CellStringFromFile{4});
                            InfFromFile.QuanOfRow=QuanOfRow;
                        end
                % In case of first string        
                otherwise
                continue;
            end  
        end
fclose(IDFile);

