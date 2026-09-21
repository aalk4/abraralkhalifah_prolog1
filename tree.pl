male(abduallah).
male(ahmad).
male(mohammad).
male(ali).
male(aziz).

female(mariam).
female(rabab).
female(fatimah).
female(layla).

parent(abduallah, ahmad).
parent(abduallah, aziz).
parent(mariam, ahmad).
parent(mariam, aziz).
parent(ahmad, mohammad).
parent(ahmad, ali).
parent(aziz, fatimah).
parent(aziz, rabab).
parent(rabab, layla).


father(X, Y) :- male(X), parent(X, Y).
mother(X, Y) :- female(X), parent(X, Y).
sister(X, Y) :- female(X), parent(P, X), parent(P, Y), X \= Y.
brother(X, Y) :- male(X), parent(P, X), parent(P, Y), X \= Y.
