%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. oct 2016 8:58
%%%-------------------------------------------------------------------
-module(onetoTenExerTest).
-author("grubio").

-include_lib("eunit/include/eunit.hrl").

exercise1_test() ->
  ?assert(onetoTenExercises:myLast([1,2,3,4]) =:= 4),
  ?assert(onetoTenExercises:myLast(["x","y","z"]) =:= "z").

exercise2_test() ->
  ?assert(onetoTenExercises:myButLast([1,2,3,4]) =:= 3),
  ?assert(onetoTenExercises:myButLast(["x","y","z"]) =:= "y").

exercise3_test() ->
  ?assert(onetoTenExercises:elementAt(2,[1,2,3,4]) =:= 2),
  ?assert(onetoTenExercises:elementAt(1,["x","y","z"]) =:= "x").

exercise4_test() ->
  ?assert(onetoTenExercises:myLength([1,2,3,4]) =:= 4),
  ?assert(onetoTenExercises:myLength(["x","y","z"]) =:= 3).

exercise5_test() ->
  io:fwrite("~w", [onetoTenExercises:myReverse([1,2,3,4])]),
  ?assert(onetoTenExercises:myReverse([1,2,3,4]) =:= [4,3,2,1]),
  ?assert(onetoTenExercises:myReverse(["x","y","z"]) =:= ["z","y","x"]).

exercise6_1_test() ->
  ?assert(onetoTenExercises:isPalindrome([1,2,3,4,5]) =:= false),
  ?assert(onetoTenExercises:isPalindrome([1,2,3,2,1]) =:= true).

exercise6_2_test() ->
  ?assert(onetoTenExercises:isPalindrome2([1,2,3,4,5]) =:= false),
  ?assert(onetoTenExercises:isPalindrome2([1,2,3,2,1]) =:= true).

exercise7_test() ->
  ?assert(onetoTenExercises:myFlatten([1,2,3,4,5]) =:= [1,2,3,4,5]),
  ?assert(onetoTenExercises:myFlatten([[1,2],3,[4,5]]) =:= [1,2,3,4,5]).

exercise8_test() ->
  ?assert(onetoTenExercises:compress([1,2,2,2,3,4,4,4,4,5,5]) =:= [1,2,3,4,5]).

exercise9_test() ->
  io:fwrite("~w", [onetoTenExercises:pack([1,2,2,2,3,4,4,4,4,5,5])]).
%%  ?assert(onetoTenExercises:pack([1,2,2,2,3,4,4,4,4,5,5]) =:= [1,2,3,4,5]).