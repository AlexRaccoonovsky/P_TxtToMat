function opts = OptionsConfigurator(FullPatch)
Defaultopts=detectImportOptions(FullPatch);
disp([Defaultopts.VariableNames' Defaultopts.VariableTypes'])
%opts=setvaropts(Defaultopts,'Format','%s %s %{yyyyMMdd}D %{HHmmSS}D %f %f %f %f %f');
opts=Defaultopts;
getvaropts(opts,'x_DATE_')
%%Set up of options FINAM_default
opts = setvartype(opts,'x_TICKER_','string')
%
opts = setvartype(opts,'x_PER_','string')
%
opts = setvartype(opts,'x_DATE_','datetime')
opts = setvaropts(opts,'x_DATE_','InputFormat','yyyyMMdd')
%
opts = setvartype(opts,'x_TIME_','datetime')
opts = setvaropts(opts,'x_TIME_','InputFormat','HHmmss')
%
opts = setvartype(opts,'x_OPEN_','double')
opts = setvartype(opts,'x_HIGH_','double')
opts = setvartype(opts,'x_LOW_','double')
opts = setvartype(opts,'x_CLOSE_','double')
opts = setvartype(opts,'x_VOL_','double')
%opts = setvaropts(opts,'SelectedVariableNames', 'x_TICKER_','x_PER_','x_DATE_');
opts.SelectedVariableNames
%opts=setvaropts(Defaultopts,'VariableNames',{1,1})
disp([opts.VariableNames' opts.VariableTypes'])