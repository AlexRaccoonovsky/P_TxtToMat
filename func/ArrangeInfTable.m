function [Checkout, ArrInfTable]=ArrangeInfTable(InfTableOfTxtFiles)
% Functions modificate InfTableOfTxtFiles which will using in
% Integral Table Of Data (ArrInfTable) & generate checkout of
% input InfTableOfTxtFiles
SizeOfInfTableOfTxtFiles=size(InfTableOfTxtFiles);
    StartSecName=InfTableOfTxtFiles(1).SecName;
    StartInterval=InfTableOfTxtFiles(1).Interval;
for RowInInfTable=1:1:SizeOfInfTableOfTxtFiles(2)
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
end
        
%Checkout=SizeOfInfTableOfTxtFiles;
ArrInfTable=0;