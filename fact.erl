-module(fact).
-export(export_all).

%factorial
factorial(0) -> 1;
factorial(N) ->
	N * factorial(N-1).
	