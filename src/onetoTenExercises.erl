%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 20. oct 2016 8:37
%%%-------------------------------------------------------------------
-module(onetoTenExercises).
-author("grubio").

%% API
-export([myLast/1, myButLast/1, elementAt/2, myLength/1, myReverse/1, myFlatten/1, compress/1, pack/1]).
-export([isPalindrome/1, isPalindrome2/1]).

%%Problem 1 - Find the last element of a list.
myLast([H|T]) -> myLast(H,T).
myLast(_,[H|T]) -> myLast(H,T);
myLast(E,[]) -> E.

%%Problem 2 - Find the last but one element of a list.
myButLast([_|T]) when length(T) =/= 1 -> myButLast(T);
myButLast([H|T]) when length(T) =:= 1 -> H.

%%Problem 3 - Find the K'th element of a list. The first element in the list is number 1.
elementAt(N,[H|T]) -> elementAt(N,1,[H|T]).
elementAt(N,I,[_|T]) when N=/=I -> elementAt(N,I+1,T);
elementAt(N,I,[H|_]) when N=:=I -> H.

%%Problem 4 - Find the number of elements of a list.
myLength(L) ->myLength(L, 0).
myLength([_|T],N) -> myLength(T, N+1);
myLength([],N) -> N.

%%Problem 5 - Reverse a list.
myReverse(L) -> myReverse([], L).
myReverse(R,[H|T]) ->myReverse([H] ++ R, T);
myReverse(R,[]) -> R.

%%Problem 6 - Find out whether a list is a palindrome
isPalindrome(L) -> isPalindrome(L,1).
isPalindrome(L,I) when I =:= round(length(L)/2) -> true;
isPalindrome(L,I) when I =/= round(length(L)/2) ->
  case elementAt(I,L) =:= elementAt(length(L)-(I-1),L) of
    true -> isPalindrome(L,I+1);
    false ->  false
  end.

isPalindrome2(L) -> isPalindrome2(L,myReverse(L)).
isPalindrome2([HL|TL],[RH|TR]) when HL=:=RH -> isPalindrome2(TL,TR);
isPalindrome2([HL|_],[RH|_]) when HL=/=RH -> false;
isPalindrome2([],[]) -> true.

%%Problem 7 - Flatten a nested list structure.
myFlatten(L) -> myFlatten([],L).
myFlatten(L, [H|T]) when is_list(H) -> myFlatten(L ++ H, T);
myFlatten(L, [H|T]) -> myFlatten(L ++ [H], T);
myFlatten(L,[]) -> L.

%%Problem 8 - Flatten a nested list structure.
compress([H|T]) -> compress([H],[H|T]).
compress([NH|NT],[H|T]) when NH =/= H-> compress([H] ++ [NH|NT],T);
compress([NH|NT],[H|T]) when NH =:= H-> compress([NH|NT],T);
compress(N, []) -> lists:reverse(N).

%%Problem 9 -  Pack consecutive duplicates of list elements into sublists.
pack([H|T]) -> pack([[H]],T).
pack([NH|NT],[H|T]) when NH =/= H -> pack([H] ++ [NH|NT],T);
pack([NH|NT],[H|T]) when NH =:= H -> pack([NH ++ H|NT],T);
pack(N, []) -> lists:reverse(N).

%%Problem 10 -   Run-length encoding of a list. Use the result of problem P09 to implement the so-called run-length encoding data compression method.