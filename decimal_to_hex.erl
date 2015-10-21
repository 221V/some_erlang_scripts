-module(decimal_to_hex).
-compile(export_all).

%Data === decimal list
tohex(Data) ->
	string:join([integer_to_list(X,16) || X <- Data], "").

% must be faster
%to_hex(X) when X < 10 -> X + $0;
%to_hex(X) -> X + $a - 10.

%bin_to_hex(Bin) -> << << ( to_hex(X) ), ( to_hex (Y) ) >> || <<X : 4, Y : 4>> <= Bin >>.
