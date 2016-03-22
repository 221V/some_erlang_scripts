-module(and_also).
-export([lucky_number/1]).

lucky_number(X) when 10 < X, X > 20 ->
	true;
lucky_number(_) ->
	false.
