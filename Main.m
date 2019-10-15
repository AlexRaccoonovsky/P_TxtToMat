clear all
clc
%load .mat file with Cell Array which consist Initailal information
load InitCellArray.mat;
%Getting path to list of txt files
PathToTxtFiles=InitCellArray(1,1);
% Analyse's list of .txt files
InfTableOfTxtFiles=ParseTxtList(PathToTxtFiles);
% Arrangement Information Table Of Txt Files
ArrInfTable=ArrangeInfTable(InfTableOfTxtFiles);
% Create CompositeTable
CompTable=TableCompositor(PathToTxtFiles,ArrInfTable);