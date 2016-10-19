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

%%-import(math, [pi/0]). Not recommended, less readable code

-define(SQUARE, square).
-define(CIRCLE, circle).
-define(TRIANGLE, triangle).

%% API
-export([perimeter/1]).

perimeter(Form) when element(1,Form) =:= ?SQUARE -> squarePerimeter(element(2, Form));
perimeter(Form) when element(1,Form) =:= ?CIRCLE -> circlePerimeter(element(2, Form));
perimeter(Form) when element(1,Form) =:= ?TRIANGLE -> trianglePerimeter(element(2, Form), element(3, Form), element(4, Form)).

circlePerimeter(R) -> io:fwrite("~w", [{?CIRCLE,math:pi()*2*R}]).

squarePerimeter(S) -> io:fwrite("~w", [{?SQUARE,S*4}]).

trianglePerimeter(A,B,C) -> io:fwrite("~w", [{?TRIANGLE,A+B+C}]).

%%TODO: Improve trianglePerimeter call