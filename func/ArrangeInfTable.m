function ArrInfTable=ArrangeInfTable(InfTableOfTxtFiles)
% Functions modificate InfTableOfTxtFiles which will using in
% Integral Table Of Data (ArrInfTable) & generate checkout of
% input InfTableOfTxtFiles
SizeOfInfTableOfTxtFiles=size(InfTableOfTxtFiles);
    StartSecName=InfTableOfTxtFiles(1).SecName;
    StartInterval=InfTableOfTxtFiles(1).Interval;

    for RowInInfTable=1:1:SizeOfInfTableOfTxtFiles(2)
        %Forming FileName column
        Checkout(RowInInfTable).FileName=InfTableOfTxtFiles(RowInInfTable).FileName;
        % Checkout Security Name in InfTableOfTxtFiles
        if (InfTableOfTxtFiles(RowInInfTable).SecName==StartSecName)
            Checkout(RowInInfTable).SecNameValidate='Ok';
        else
            Checkout(RowInInfTable).SecNameValidate='!Error';
        end
        % Checkout Interval in InfTableOfTxtFiles
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
    
    CheckoutTable=struct2table(Checkout);
    SortStartDate=sortrows(CheckoutTable,'DateTimeStart');
        
%Checkout=SizeOfInfTableOfTxtFiles;
ArrInfTable=SortStartDate;