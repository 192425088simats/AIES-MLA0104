% Water Jug Problem

move((0,Y),(4,Y)) :- Y =< 3.
move((X,0),(X,3)) :- X =< 4.

move((X,Y),(0,Y)) :- X > 0.
move((X,Y),(X,0)) :- Y > 0.

move((X,Y),(X1,3)) :-
    X > 0,
    Y < 3,
    T is min(X,3-Y),
    X1 is X-T.

move((X,Y),(4,Y1)) :-
    X < 4,
    Y > 0,
    T is min(Y,4-X),
    Y1 is Y-T.
