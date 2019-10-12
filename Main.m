clear all
clc
%load .mat file with Cell Array which consist Initailal information
load InitCellArray.mat;
%Getting path to list of txt files
PathToTxtFiles=InitCellArray(1,1);
% Parsing list of txt files
InfTableOfTxtFiles=ParseTxtList(PathToTxtFiles);
%Arrangement Information Table Of Txt Files
%% 
ArrInfTable=ArrangeInfTable(InfTableOfTxtFiles)



%FileName='SPFB.Si_090605_100604.txt';
%InfFromFile=GetInfFromTxtFile(PathToTxtFiles,FileName);
%PathToTxtFiles=InitCellArray(1,1)
%InfTableOfTxtFiles=ParseTxtList(InitCellArray(1,1));
% TxtListFiles=dir(InitCellArray{1,1})
% %StructArray=TxtToStruct_0001();
% A=size(TxtListFiles);
% IsDir=TxtListFiles(1).isdir;