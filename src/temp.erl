%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. oct 2016 9:29
%%%-------------------------------------------------------------------
-module(temp).
-author("grubio").

%% API
-export([convert/1]).

f2c(F) -> io:fwrite("~w", [{c,(F-32)/1.8}]).

c2f(C) -> io:fwrite("~w", [{f,(C+32)*1.8}]).

convert({Type, Temp}) when Type =:= f -> f2c(Temp);
convert({Type, Temp}) when Type =:= c -> c2f(Temp).

