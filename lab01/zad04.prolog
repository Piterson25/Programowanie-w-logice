number(1, i).
number(5, v).
number(10, x).
number(50, l).
number(100, c).
number(500, d).
number(1000, m).

latin(0, []).
latin(N, [X]) :- number(N, X).
latin(N, [L1, L2 | T]) :-
  number(N1, L1),
  number(N2, L2),
  N1 >= N2,
  latin(TN, [L2 | T]),
  N is N1 + TN.

latin(N, [L1, L2 | T]) :-
  number(N1, L1),
  number(N2, L2),
  N1 < N2,
  latin(TN, [L2 | T]),
  N is TN - N1.
