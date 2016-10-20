%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. oct 2016 12:41
%%%-------------------------------------------------------------------
-module(concurrency2).
-author("grubio").

%% API
-export([]).

%%process(Pid) ->
%%  receive
%%    finished ->
%%      io:format("a pastar~n", []);
%%     msg ->
%%      io:format("procesooooo~n", []),
%%      Pid ! msg,
%%      process(Pid)
%%  end.
%%
%%process0(N, Pid) ->
%%  receive
%%    msg ->
%%      io:format("proceso 0~n", []),
%%      Pid ! msg,
%%      case N of
%%        0 -> Pid ! finished;
%%        _ -> Pid ! msg, process(N-1,Pid)
%%      end
%%  end.
%%
%%start(N) ->


