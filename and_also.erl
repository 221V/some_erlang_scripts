-module(and_also).
-compile(export_all).

lucky_number(X) when 10 < X, X > 20 ->
	true;
lucky_number(_) ->
	false.
