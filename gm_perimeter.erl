-module(gm_perimeter).
-compile(export_all).

%периметр
%perimeter

%периметр прямокутника,паралелограма,,різні сторони
%perimeter of the parallelogram,,different sides
ppr(A,B) ->
	2*(A+B).

%периметр квадрата,ромба,,сторона
%perimeter of the quadrate,rhombus,,side
pcr(A) ->
	4*A.

%периметр трапеції,,сторони
%perimeter of the trapeze,,sides
ptrap(A,B,C,D) ->
	A+B+C+D.

%периметр трикутника,,сторони
%perimeter of the triangle,,sides
ptr(A,B,C) ->
	A+B+C.

%периметр кола\круга==довжина кола,,радіус
%perimeter of the circle,,radius
pco(A) ->
	2*math:pi()*A.

%довжина дуги кола,,радіус, градуси кута дуги
%length of the arc of circle,,radius,degree
ppco(A,B) ->
	(math:pi()*A*B)/180.
