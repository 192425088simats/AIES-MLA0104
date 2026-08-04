% Initial State
at(monkey, door).
at(box, window).
at(banana, middle).

% Rule: Monkey can walk
move(monkey, X, Y) :-
    at(monkey, X),
    write('Monkey walks from '),
    write(X),
    write(' to '),
    write(Y), nl.

% Rule: Monkey pushes the box
push(box, X, Y) :-
    at(box, X),
    write('Monkey pushes box from '),
    write(X),
    write(' to '),
    write(Y), nl.

% Rule: Monkey climbs the box
climb :-
    write('Monkey climbs onto the box'), nl.

% Rule: Monkey grabs the banana
grab :-
    write('Monkey grabs the banana'), nl.
