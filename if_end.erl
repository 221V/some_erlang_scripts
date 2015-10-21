-module(if_end).
-compile(export_all).

bmi_telle(Bmi) ->
	if	Bmi =< 18.5 -> "You're underweight.";
		Bmi =< 25	-> "You're supposedly normal.";
		Bmi =< 30	-> "You're fat.";
		true		-> "You're very fat."
	end.
