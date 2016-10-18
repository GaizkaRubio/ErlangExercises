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

-define(F, f).
-define(C, c).

f2c(F) -> io:fwrite("~w", [{?C,(F-32)/1.8}]).

c2f(C) -> io:fwrite("~w", [{?F,(C+32)*1.8}]).

convert({Type, Temp}) when Type =:= ?F -> f2c(Temp);
convert({Type, Temp}) when Type =:= ?C -> c2f(Temp).

