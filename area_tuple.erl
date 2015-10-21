-module(area_tuple).
-compile(export_all).

area({square, Side}) ->
	Side * Side;
area({sircle, Radius}) ->
	math:pi() * Radius * Radius;
area({triangle, A, B, C}) ->
	S=(A+B+C)/2,
	math:sqrt(S*(S-A)*(S-B)*(S-C));
area(_) ->
	{error, invalid_object}.
