nth(1,[X|_],X).
nth(N,[_|T],X) :- N2 is N - 1, nth(N2,T,X).

ordered([]).
ordered([_]).
ordered([H1, H2 | T]) :- H1 =< H2, ordered([H2 | T]).

mergesort([], []).
mergesort([X], [X]).
mergesort(L1, L2) :- split(Half1, Half2, L1), mergesort(Half1, S1), mergesort(Half2, S2), merge(S1, S2, L2).
split(L1, L2, L3) :- append(L1, L2, L3), length(L1, N1), length(L2, N2), (N1=N2; N1 is N2+1).
merge([], B, B).
merge(B, [], B).
merge([H1 | T1], [H2 | T2], [H1 | Rest]) :- 
    H1 =< H2, 
    merge(T1, [H2 | T2], Rest).
merge([H1 | T1], [H2 | T2], [H2 | Rest]) :- 
    H1 > H2, 
    merge([H1 | T1], T2, Rest).

