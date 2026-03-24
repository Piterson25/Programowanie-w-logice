%node(1,node(2,node(4, nil, nil),node(5,nil,nil)),node(3,node(6,nil,nil),node(7,nil,nil))).

size(nil,0).
size(node(_,L,P), Result) :- size(L, XL), size(P,XP), Result is XL + 1 + XP.

%or (;) ważny !!!
search(node(X,_,_),X).
search(node(_,L,P),X) :- search(L, X); search(P, X).

maxcmp(X,Y,X) :- X >= Y.
maxcmp(X,Y,Y) :- X =< Y.
max(node(X, nil, nil), X).
max(node(E, L, nil), X) :- max(L, X1), maxcmp(X1, E, X).
max(node(E, nil, P), X) :- max(P, X1), maxcmp(X1, E, X).
max(node(E, L, P), X) :- max(L, X1), max(P, X2), maxcmp(X1, X2, R), maxcmp(E, R, X).

times(N, node(X1, nil, nil), node(X2, nil, nil)) :- X2 is X1 * N.
times(N, node(X1, L1, nil), node(X2, L2, nil)) :- 
    X2 is N * X1, 
    times(N, L1, L2).
times(N, node(X1, nil, P1), node(X2, nil, P2)) :- 
    X2 is N * X1, 
    times(N, P1, P2).
times(N, node(X1, L1, P1), node(X2, L2, P2)) :-
    X2 is N * X1,
    times(N, L1, L2),
    times(N, P1, P2).

preorder(nil, []).
preorder(node(X, L, P), [X | T]) :-
  preorder(L, LL),
  preorder(P, PL),
  append(LL, PL, T).

postorder(nil, []).
postorder(node(X, L, P), Result) :-
  postorder(L, LL),
  postorder(P, PL),
  append(LL, PL, LP),
  append(LP, [X], Result).

inorder(nil, []).
inorder(node(X, L, P), Result) :-
  inorder(L, LL),
  inorder(P, PL),
  append(LL, [X | PL], Result).

