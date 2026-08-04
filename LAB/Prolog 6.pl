bird(parrot).
bird(pigeon).
bird(peacock).
bird(sparrow).
bird(penguin).
bird(ostrich).

can_fly(X) :-
    bird(X),
    X \= penguin,
    X \= ostrich.
