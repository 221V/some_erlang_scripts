-module(or_else).
-export([lucky_atom/1]).

lucky_atom(X) when X == atom1; X == anot2 ->
	true;
lucky_atom(_) ->
	false.
