-module(or_else).
-compile(export_all).

lucky_atom(X) when X == atom1; X == anot2 ->
	true;
lucky_atom(_) ->
	false.
