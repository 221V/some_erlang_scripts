-module(comparison_var).
-compile(export_all).

same(X,X) ->
	true;
same(_,_) ->
	false.
