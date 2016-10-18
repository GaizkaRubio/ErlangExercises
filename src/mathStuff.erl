%%%-------------------------------------------------------------------
%%% @author grubio
%%% @copyright (C) 2016, <COMPANY>
%%% @doc
%%%
%%% @end
%%% Created : 18. oct 2016 9:57
%%%-------------------------------------------------------------------
-module(mathStuff).
-author("grubio").
-define(SQUARE, square).

%% API
-export([perimeter/1]).

perimeter(Form) when element(1,Form) =:= ?SQUARE -> squarePerimeter(element(2, Form));
perimeter(Form) when element(1,Form) =:= circle -> circlePerimeter(element(2, Form));
perimeter(Form) when element(1,Form) =:= square -> trianglePerimeter(element(2, Form), element(2, Form), element(2, Form)).

circlePerimeter(R) -> pi*2*R.

squarePerimeter(S) -> io:fwrite("~w", [{?SQUARE,S*4}]).

trianglePerimeter(A,B,C) -> A+B+C.