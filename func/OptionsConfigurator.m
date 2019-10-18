function opts = OptionsConfigurator(FullPatch)
%Take default options from .txt - file
Defaultopts=detectImportOptions(FullPatch);
% Create our options from default options
opts=Defaultopts;

%%Set up of options FINAM_default
%% Set var type in options
opts = setvartype(opts,'x_TICKER_','string');
opts = setvartype(opts,'x_PER_','string');
opts = setvartype(opts,'x_DATE_','datetime');
opts = setvartype(opts,'x_TIME_','datetime');
opts = setvartype(opts,'x_OPEN_','double');
opts = setvartype(opts,'x_HIGH_','double');
opts = setvartype(opts,'x_LOW_','double');
opts = setvartype(opts,'x_CLOSE_','double');
opts = setvartype(opts,'x_VOL_','double');

%% Configure format of datetime 
opts = setvaropts(opts,'x_DATE_','InputFormat','yyyyMMdd');
opts = setvaropts(opts,'x_TIME_','InputFormat','HHmmss');
