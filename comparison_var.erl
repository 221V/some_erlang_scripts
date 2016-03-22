-module(comparison_var).
-export([same/2]).

same(X,X) ->
	true;
same(_,_) ->
	false.
