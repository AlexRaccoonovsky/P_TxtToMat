clear all
%load .mat file with Cell Array which consist Initailal information
load InitCellArray.mat;
TxtListFiles=dir(InitCellArray{1,1})
%StructArray=TxtToStruct_0001();