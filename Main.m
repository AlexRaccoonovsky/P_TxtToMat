clear all
%load .mat file with Cell Array which consist Initailal information
load InitCellArray.mat;

PathToTxtFiles=InitCellArray(1,1);
FileName='SPFB.Si_090605_100604.txt';
InfFromFile=GetInfFromTxtFile(PathToTxtFiles,FileName);
%PathToTxtFiles=InitCellArray(1,1)
%InfTableOfTxtFiles=ParseTxtList(InitCellArray(1,1));
% TxtListFiles=dir(InitCellArray{1,1})
% %StructArray=TxtToStruct_0001();
% A=size(TxtListFiles);
% IsDir=TxtListFiles(1).isdir;