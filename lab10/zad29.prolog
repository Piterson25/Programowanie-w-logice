list_to_term([H], H).
list_to_term([H | L], T) :- 
  list_to_term(L, T1),
  T = H + T1.

