-module(hello3).
-export([hello/0,greet/2]).

hello() ->
io:format("Hello, world!~n").

greet(male, Name) ->
	io:format("Hello, Mr. ~s!", [Name]);
greet(female, Name) ->
	io:format("Hello, Mrs. ~s!", [Name]);
greet(_, Name) ->
	io:format("Hello, ~s!", [Name]).
