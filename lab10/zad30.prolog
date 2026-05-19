variables(T,[]) :- atomic(T).
variables(T,[T]) :- var(T).
variables(T,L) :- 
  T=..[_|H],
  variablesList(H, L).

variablesList([],[]).
variablesList([X|L], L3) :- 
  variables(X, L1), 
  variablesList(L, L2), 
  append(L1, L2, L3).

