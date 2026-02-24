mylength(0, []).
mylength(N, [_|L]) :- mylength(M, L), N is M+1.

mymember(N, [N|_]).
mymember(N, [_|L]) :- mymember(N, L).

myfac(N, N).
myfac(N, W) :- myfac(M, D), M is N - 1, M is div(W, N).

