male(tom).
male(bob).
male(jim).

female(liz).
female(ann).
female(pat).
female(pam).

parent(tom, bob).
parent(tom, liz).
parent(pam, bob).
parent(bob, ann).
parent(bob, pat).
parent(pat, jim).

child(X, Y) :- parent(Y, X).
sister(X, Y) :- female(X), parent(Z, X), parent(Z, Y), X \= Y.
has_a_child(X) :- parent(X, _).
mother(X, Y) :- female(X), parent(X, Y).
grandparent(X, Y) :- parent(X, Z), parent(Z, Y).
predecessor(X, Z) :- parent(X, Z).
predecessor(X, Z) :- parent(X, Y), predecessor(Y, Z).
