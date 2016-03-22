-module(take_from_list).
-export([first/1,second/1]).

first([X|_]) -> 
	X.
second([_,X|_]) -> 
	X.
