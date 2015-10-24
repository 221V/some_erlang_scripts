-module(gm_area).
-compile(export_all).

%площа
%area

%площа прямокутника,,різні сторони
%area of the rectangle,,different sides
plpr(A,B) ->
	A*B.

%площа квадрата,,сторона(в квадраті, або (діагональ в квадраті)/2 )
%area of the quadrate,,side (side^2 or (diagonal^2)/2 )
plcv(A) ->
	A*A.

plcv2(A) ->
	A*A/2.

%площа трапеції,,сторони(паралельні), висота
%area of the trapeze,,sides(parallel), height
pltrap(A,B,C) ->
	((A+B)*C)/2.

%площа паралелограма,,сторона,висота
%area of the parallelogram,,side,height
plprl(A,B) ->
	A*B.

%площа правильного багатокутника,,сторона, кількість сторін
%area of the regular polygon,,side,the number of sides
plbc(A,B) ->
	(B*A*A)/(4*math:tan(180/B)).

%площа ромба,,діагоналі
%area of the rhombus,,diagonals
plr(A,B) ->
	(A*B)/2.

%площа сектора дуги круга,, довжина дуги,радіус сектора
%area of the arc of a circle sector,,length of the arc of circle,radius sector
plsdc(A,B) ->
	(A*B)/2.

%площа круга,, радіус
%area of the circle,, radius
plc(A) ->
	math:pi()*A*A.

%площа сегмента круга,,радіус,кут сегмента
%area of the segment of the circle,,radius,angle of the segment
plscr(A,B) ->
	(A*A/2)*(math:pi()*(B/180)-math:sin(B)).

%площа трикутника 1,,висота,сторона-основа
%area of the triangle (1),,height,basis side
pltr1(A,B) ->
	(A*B)/2.

%площа трикутника 2, формула Герона,, 3 сторони
%area of the triangle (2),Heron formula,, 3 sides
pltr2(A,B,C) ->
	P=(A+B+C)/2,
	math:sqrt(P*(P-A)*(P-B)*(P-C)).

%площа трикутника 3,, дві сторони і кут між ними-градуси
%area of the triangle (3),, 2 sides and angle between that
pltr3(A,B,C) ->
	(A*B*math:sin(C))/2.

%площа трикутника 4,, сторона і кути на тій стороні - градуси
%area of the triangle (4),, side and angles at that side
pltr4(A,B,C) ->
	D=180-(B+C),
	(A*A/2)*(math:sin(B)*math:sin(C)/math:sin(D)).

%площа прямокутного трикутника 5,, сторони які утворюють прямий кут
%area of the rectangular triangle (5),, sides that are at right angle
pltr5(A,B) ->
	A*B/2.

%площа рівнобедреного трикутника 6 - по 3й стороні і висоті на ту сторону,,сторона, висота
%area of the isosceles triangle (6) - by 3rd side and hight at that side,,side,hight at that side
pltr6(A,B) ->
	A*B/2.

%площа рівнобедреного трикутника 7 - за 2(3) сторонами,,3я сторона,одна з одинакових сторін
%area of the isosceles triangle (7) - by 2(3) sides,,3rd side,one of identical sides
pltr7(A,B) ->
	A*math:sqrt(B*B-A*A/4)/2.

%площа рівностороннього трикутника 8 - за висотою і стороною,,висота,сторона
%area of the equilateral triangle (8) - by hight and side,,hight,side
pltr8(A,B) ->
	A*B/2.

%площа рівностороннього трикутника 9 - за стороною,,сторона
%area of the equilateral triangle (9) - by side,,side
pltr9(A) ->
	math:sqrt(3)*A*A/4.

