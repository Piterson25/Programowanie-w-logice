delete(X,[X|L],L).
delete(X,[H|L1],[H|L2]) :- delete(X,L1,L2).

permutation([], []).
permutation(L1,[H|L2]) :- delete(H, L1, L3), permutation(L3,L2).

