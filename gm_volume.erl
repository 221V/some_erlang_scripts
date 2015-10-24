-module(gm_volume).
-compile(export_all).

%обєм
%volume

%обєм кулі(сфери),,радіус
%volume of the ball(sphere),,radius
vc(A) ->
	math:pi()*4*math:pow(A,3)/3.

%обєм сегмента кулі(сфери),відрізаного площиною,,радіус великого круга кулі,висота
%volume of segment the ball(sphere),cutting plane,,the radius of the great circle ball,height
vsc(A,B) ->
	math:pi()*B*B*(A-B/3).

%обєм слоя кулі(сфери),відрізаного двома паралельними площинами,,радіус більшого круга слоя кулі,радіус меншого круга слоя кулі,висота слоя кулі
%volume of the layer ball(sphere),cutting two parallel planes,,the radius of the bigger circle of layer ball,height of the layer ball
vslc(A,B,C) ->
	math:pi()*math:pow(C,3)/6+math:pi()*(A*A+B*B)*C/2.

%обєм сектора кулі(сфери),обмежена кривою поверхні кулі та конічною поверхнею, основою якої є основа сегмента,а вершиною - центр кулі,,радіус конуса,радіус кулі
%volume of the sector ball(sphere),limited surface curve ball and cone, which basis are base segment and top - center of the ball,,the radius of the cone,the radius of the ball
vscc(A,B) ->
	math:pi()*2*A*A*B/3.

%обєм циліндра,,радіус,висота
%volume of the cylinder,,radius,height
vcl(A,B) ->
	math:pi()*A*A*B.

%обєм конуса,,радіус,висота
%circular cone volume,,radius of the circle at the bottom, height
vcn(A,B) ->
	math:pi()*A*A*B/3.

%обєм зрізаного конуса,,менший (верхній) радіус,більший (нижній) радіус,твірна зрізаного конуса
%volume of a truncated circular cone,,smaller radius,bigger radius,lateral height of a truncated circular cone
vzcn(A,B,C) ->
	math:pi()*C*(A*A+A*B+B*B)/3.

%обєм куба,,висота ребра
%volume of the cube,,edge's hight
vcb(A) ->
	math:pow(A,3).

%обєм прямокутного паралелепіпеда,,ребра
%volume of the rectangular parallelepiped,,facets
vpp(A,B,C) ->
	A*B*C.

%обєм піраміди,,площа основи,висота
%volume of the pyramid,,basis area,height
vpd(A,B) ->
	A*B/3.

%обєм зрізаної піраміди,,площа верхньої основи,площа нижньої основи,висота
%volume of the truncated pyramid,, upper base area,lower base area,height
vzpd(A,B,C) ->
	C*(A+B+math:sqrt(A*B))/3.

%обєм правильної піраміди,,число сторін правильного багатокутника-основи піраміди,сторона багатокутника-основи,висота правильної піраміди
%volume of the right pyramid,,the number of sides of a regular polygon-base of the pyramid, polygon base side, height of the right pyramid
vppd(A,B,C) ->
	C*A*B*B/(12*math:tan(180/A)).

%обєм правильної трикутної піраміди,,сторона правильного трикутника-основи піраміди,висота піраміди
%volume of the right triangular pyramid,,triangle base side,height of the right triangular pyramid
vptpd(A,B) ->
	B*A*A/(4*math:sqrt(3)).

%обєм правильної чотирикутної піраміди,,сторона квадрата-основи піраміди,висота піраміди
%volume of the right quadrangular pyramid,,quadrate base side,height of the right quadrangular pyramid
vpcpd(A,B) ->
	B*A*A/3.

%обєм тетраедра,,ребро тетраедра
%volume of the tetrahedron,,edge of the tetrahedron
vtdr(A) ->
	math:sqrt(2)*math:pow(A,3)/12.
