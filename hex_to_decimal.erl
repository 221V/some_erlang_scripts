-module(hex_to_decimal).
-compile(export_all).

%Data === hex list
todec(Data) ->
	[list_to_integer(X,16) || X <- Data].
