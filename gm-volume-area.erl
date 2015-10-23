-module(gm-volume-area).
-compile(export_all).

%площа поверхні обємних тіл
%surface area of the volume bodies,,inputs

%площа поверхні кулі(сфери),,радіус
%surface area of the ball(sphere),,radius
plvc(A) ->
	math:pi()*4*A*A.

%площа поверхні сегмента кулі(сфери),відрізаного площиною,,радіус великого круга кулі,висота
%surface area of segment the ball(sphere),cutting plane,,the radius of the great circle ball,height
plvsc(A,B) ->
	math:pi()*2*A*B.

%площа поверхні слоя кулі(сфери),відрізаного двома паралельними площинами,,радіус більшого круга кулі,висота слоя кулі
%surface area of the layer ball(sphere),cutting two parallel planes,,the radius of the bigger circle ball,height of the layer ball
plvshc(A,B) ->
	math:pi()*2*A*B.

%площа поверхні сектора кулі(сфери),обмежена кривою поверхні кулі та конічною поверхнею, основою якої є основа сегмента,а вершиною - центр кулі,,радіус конуса,радіус кулі
%surface area of the sector ball(sphere),limited surface curve ball and cone, which basis are base segment and top - center of the ball,,the radius of the cone,the radius of the ball
plvssc(A,B) ->
	math:pi()*B*(2*(B-math:sqrt(B*B-A*A))+A).

%площа поверхні куба,,висота ребра
%surface area of the cube,,edge's hight
plvcub(A) ->
	6*A*A.

%площа бічної поверхні круглого конуса(твірна конуса*довжина кола/2 або Пі*радіус обертання*твірна конуса),,радіус обертання конуса,твірна конуса
%lateral surface area of the round cone(lateral height*circle height/2 or Pi*radius of the of the circle at the bottom*lateral height),,radius of the circle at the bottom,lateral height
plvbcn(A,B) ->
	math:pi()*A*B.

%повна площа поверхні круглого конуса,,радіус обертання конуса,твірна конуса
%full circular cone surface area,,radius of the circle at the bottom,lateral height
plvfcn(A,B) ->
	math:pi()*A*(A+B).

%площа бічної поверхні циліндра,,радіус,висота
%lateral surface area of the cylinder,,radius,height
plvbcl(A,B) ->
	math:pi()*2*A*B.

%повна площа поверхні циліндра,,радіус,висота
%full surface area of the cylinder,,radius,height
plvfcl(A,B) ->
	math:pi()*2*A*(A+B).

%площа поверхні прямокутного паралелепіпеда,,грані
%surface area of the rectangular parallelepiped,,facets
plvpp(A,B,C) ->
	2*(A*B+B*C+A*C).

%площа бічної поверхні зрізаного конуса,,менший (верхній) радіус,більший (нижній) радіус,твірна зрізаного конуса
%lateral surface area of a truncated circular cone,,smaller radius,bigger radius,lateral height of a truncated circular cone
plvbzcn(A,B,C) ->
	math:pi()*(A+B)*C.

%повна площа поверхні зрізаного конуса,,менший (верхній) радіус,більший (нижній) радіус,твірна зрізаного конуса
%full surface area of a truncated circular cone,,smaller radius,bigger radius,lateral height of a truncated circular cone
plvfzcn(A,B,C) ->
	math:pi()*(A*A+(A+B)*C+B*B).
