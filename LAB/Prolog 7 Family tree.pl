% Gender
male(tom).
male(bob).
male(jim).
male(sam).

female(pam).
female(liz).
female(ann).
female(pat).

% Parent Relationships
parent(pam,bob).
parent(tom,bob).

parent(pam,liz).
parent(tom,liz).

parent(bob,ann).
parent(pat,ann).

parent(bob,jim).
parent(pat,jim).

parent(liz,sam).

% Rules
mother(X,Y) :-
    parent(X,Y),
    female(X).

father(X,Y) :-
    parent(X,Y),
    male(X).

grandfather(X,Y) :-
    parent(X,Z),
    parent(Z,Y),
    male(X).

grandmother(X,Y) :-
    parent(X,Z),
    parent(Z,Y),
    female(X).

brother(X,Y) :-
    parent(P,X),
    parent(P,Y),
    male(X),
    X \= Y.

sister(X,Y) :-
    parent(P,X),
    parent(P,Y),
    female(X),
    X \= Y.
