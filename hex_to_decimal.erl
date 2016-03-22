-module(hex_to_decimal).
-export([todec/1]).

%Data === hex list
todec(Data) ->
	[list_to_integer(X,16) || X <- Data].
