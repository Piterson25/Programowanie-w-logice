animate(fred).
animate(alice).
male(fred).
canine(alice).
feline(fred).

checkprops(_,[]) :- !.
checkprops(A, [X | L]) :-
  T=..[X, A],
  call(T),
  checkprops(A, L).
