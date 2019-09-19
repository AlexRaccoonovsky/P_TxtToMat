clear all
%load .mat file with Cell Array which consist start information
load InputCellArray.mat;
TxtListFiles=dir(InputCellArray{1,1})
%StructArray=TxtToStruct_0001();