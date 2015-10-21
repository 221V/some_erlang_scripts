-module(take_from_list).
-compile(export_all).

first([X|_]) -> 
	X.
second([_,X|_]) -> 
	X.
