plus(X,Y,N) :- plus(X,Y,N,Y).
plus(0,_,A,A).
plus(X,Y,N,A) :- X > 0, X1 is X - 1, A1 is A + 1, plus(X1,Y,N,A1).

times(X,Y,N) :- times(X,Y,N,0).
times(_,0,A,A).
times(X,Y,N,A) :- Y > 0, Y1 is Y - 1, A1 is X + A, times(X,Y1,N,A1).

sum-up(N,X) :- sum-up(N,X,0).
sum-up(0,A,A).
sum-up(N,X,A) :- N > 0, A1 is A + N, N1 is N - 1, sum-up(N1,X,A1).

fib(X,N) :- fib(X,N,0,1).
fib(0,A,A,_).
fib(X,N,A,B) :- X > 0, X1 is X - 1, A1 is B, B1 is B + A, fib(X1,N,A1,B1).

