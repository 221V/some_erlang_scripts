-module(safe_division).
-compile(export_all).

safe_division(X, Y) when is_integer(X), is_integer(Y), Y /= 0 ->
	X / Y;
safe_division(_, _) ->
	false.
