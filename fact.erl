-module(fact).
-export([factorial/1]).

%factorial
factorial(0) -> 1;
factorial(N) ->
	N * factorial(N-1).
	