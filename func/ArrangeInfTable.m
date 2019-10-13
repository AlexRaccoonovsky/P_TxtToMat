function ArrInfTable=ArrangeInfTable(InfTableOfTxtFiles)
% Functions modificate InfTableOfTxtFiles which will using in
% Integral Table Of Data (ArrInfTable) & generate checkout of
% input InfTableOfTxtFiles

%% Initialization Primary information
SizeOfInfTableOfTxtFiles=size(InfTableOfTxtFiles);
StartSecName=InfTableOfTxtFiles(1).SecName;
StartInterval=InfTableOfTxtFiles(1).Interval;
%% Validating Interval & Security NameString
    for RowInInfTable=1:1:SizeOfInfTableOfTxtFiles(2)
        %Forming FileName column
        Checkout(RowInInfTable).FileName=InfTableOfTxtFiles(RowInInfTable).FileName;
        % Checkout equaling Security Name in InfTableOfTxtFiles
        if (InfTableOfTxtFiles(RowInInfTable).SecName==StartSecName)
            Checkout(RowInInfTable).SecNameValidate='Ok';
        else
            Checkout(RowInInfTable).SecNameValidate='!Error';
        end
        % Checkout equal Interval in InfTableOfTxtFiles
        if (InfTableOfTxtFiles(RowInInfTable).Interval==StartInterval)
            Checkout(RowInInfTable).IntervalValidate='Ok';
        else
            Checkout(RowInInfTable).IntervalValidate='!Error';
        end
        %Forming Date_Time-format
        DateTimeStartStr=strcat(InfTableOfTxtFiles(RowInInfTable).StartDate,'_',InfTableOfTxtFiles(RowInInfTable).StartTime);
        DateTimeFinishStr=strcat(InfTableOfTxtFiles(RowInInfTable).FinishDate,'_',InfTableOfTxtFiles(RowInInfTable).FinishTime);
        Checkout(RowInInfTable).DateTimeStart=datetime(DateTimeStartStr,'InputFormat','yyyyMMdd_HHmmSS');
        Checkout(RowInInfTable).DateTimeFinish=datetime(DateTimeFinishStr,'InputFormat','yyyyMMdd_HHmmSS');
        
    end
%% Sorting by DateTimeStart
    CheckoutTable=struct2table(Checkout);
    ArrInfTable=sortrows(CheckoutTable,'DateTimeStart');
