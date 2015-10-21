-module(comparison).
-compile(export_all).

bmi_tell(Bmi) when Bmi =< 18.5 ->
	"You're underweight.";
bmi_tell(Bmi) when Bmi =< 25 ->
	"You're supposedly normal.";
bmi_tell(Bmi) when Bmi =< 30 ->
	"You're fat.";
bmi_tell(_) ->
	"You're very fat.".
