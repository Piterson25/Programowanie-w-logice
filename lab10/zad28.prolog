% filter(pos,[1,2,0,5,-5,-6,8],L).

pos(X) :- X > 0.
neg(X) :- X < 0.

myfilter(_, [], []) :- !.
myfilter(P, [H1 | L1], [H1 | L2]) :-
  T=..[P, H1],
  call(T),
  !,
  myfilter(P, L1, L2).
myfilter(P, [_ | L1], L2) :- myfilter(P, L1, L2).
