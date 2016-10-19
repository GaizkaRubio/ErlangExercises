%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. oct 2016 9:53
%%%-------------------------------------------------------------------
-module(time).
-author("grubio").

%% API
-export([swedish_date/0]).

swedish_date() -> Current = calendar:local_time(),
                  {{Current_Year, Current_Month, Current_Day}, _ } = Current,
                  Temp = lists:nthtail(length(erlang:integer_to_list(Current_Year))-2, erlang:integer_to_list(Current_Year)) ++
                  erlang:integer_to_list(Current_Month) ++
                  erlang:integer_to_list(Current_Day),
                  io:format("~s", [Temp]).