last(X,[X]).
last(X,[_ | L]) :- last(X, L).

delete(_,[],[]).
delete(X,[_ | T1],L2) :- delete(X, T1, L2).
delete(X,[_ | T1], [H2 | T2]) :- H2 \= X, delete(X, T1, T2).

delete([_ | [_ | [_ | []]]], []).
delete([H | T1], [H | T2]) :- delete(T1, T2).

reverse(L1, L2) :- reverseHelp(L1, L2, []).
reverseHelp([], Acc, Acc).
reverseHelp([H | T], L2, Acc) :- reverseHelp(T, L2, [H|Acc]).

evenlength([]).
evenlength([_, _ | T]) :- evenlength(T).
oddlength([_ | T]) :- evenlength(T).

shift([],[]).
shift([H|T],[L]) :- shift(T, H, L).
shift([],X,[X]).
shift([H|T1],X,[H|T2]) :- shift(T1, X, T2).

quadrat([],[]).
quadrat([H1 | T1], [H2 | T2]) :- H2 is H1 * H1, quadrat(T1, T2).

combine([],[],[]).
combine([],[X],L) :- [X | L].
combine([X],[],L) :- [X | L].
combine([H1 | T1], [H2 | T2], [[H1, H2] | T3]) :- combine(T1, T2, T3).

palindrom(L) :- palindromHelp(L, []).
palindromHelp([H | T], L) :- palindromHelp(T, [H | L]).
palindromHelp(A,A).
palindromHelp([_ | A], A).

p(X, [Y, X, Z | _], Y, Z).
p(X, [_ | T], Y, Z) :-  p(X, T, Y, Z).

q(X, [X, X | _], [X, X]) :- !.
q(X, [H | T1], [H | T2]) :- q(X, T1, T2).

