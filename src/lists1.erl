%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. oct 2016 16:10
%%%-------------------------------------------------------------------
-module(lists1).
-author("grubio").

%% API
-export([min_max/1]).

min(L) -> min(lists:nth(1, L), L).

min(N, [Head|Tail]) when Head =< N -> min(Head, Tail);
min(N, [Head|Tail]) when Head >= N -> min(N, Tail);
min(N, []) -> N.

max(L) -> max(lists:nth(1, L), L).

max(N, [Head|Tail]) when Head >= N -> max(Head, Tail);
max(N, [Head|Tail]) when Head =< N -> max(N, Tail);
max(N, []) -> N.

min_max(L) -> {min(L), max(L)}.