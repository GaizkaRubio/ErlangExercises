%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 19. oct 2016 12:16
%%%-------------------------------------------------------------------
-module(concurrency1).
-author("grubio").

%% API
-export([start/1, ping/1, pong/0]).

ping(0) ->
  pong ! finished,
  io:format("Ala~n", []);

ping(N) ->
  pong ! {ping, self()},
  receive
    pong ->
      io:format("Me Mata~n", [])
  end,
  ping(N - 1).

pong() ->
  receive
    finished ->
      io:format("a pastar~n", []);
    {ping, Ping_PID} ->
      io:format("Big Data~n", []),
      Ping_PID ! pong,
      pong()
  end.

start(N) ->
  register(pong, spawn(concurrency1, pong, [])),
  spawn(concurrency1, ping, [N]).