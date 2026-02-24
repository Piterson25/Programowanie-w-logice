mylength(0, []).
mylength(N, [_|L]) :- mylength(M, L), N is M+1.

mymember(N, [N|_]).
mymember(N, [_|L]) :- mymember(N, L).

myfac(0, 1).
myfac(N, W) :- N > 0, M is N - 1, myfac(M, D), W is N * D.

myfib(0, 0).
myfib(1, 1).
myfib(N, W) :- N > 1, N1 is N - 1, N2 is N - 2, myfib(N1, W1), myfib(N2, W2), W is W1 + W2.

gcd(N, N, _) :- N > 0.
gcd(N, A, B) :- B > 0, R is A mod B, gcd(N, B, R).

