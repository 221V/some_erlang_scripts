-module(safe_division).
-export([safe_division/2]).

safe_division(X, Y) when is_integer(X), is_integer(Y), Y /= 0 ->
	X / Y;
safe_division(_, _) ->
	false.
