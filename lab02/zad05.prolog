plus(N,0,N).
plus(A,B,N) :- A > 0, B > 0, C is B - 1, D is A + 1, plus(D,C,N).

times(_,0,0).
times(A,B,N) :- B > 0, C is B - 1, times(A,C,R), N is R + A.

sum-up(0,0).
sum-up(N,X) :- N > 0, A is N - 1, sum-up(A,B), X is B + N.

