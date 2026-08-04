% Graph
edge(a,b,4).
edge(a,c,3).
edge(b,d,5).
edge(c,e,2).
edge(d,f,6).
edge(e,f,1).

% Heuristic Values
heuristic(a,7).
heuristic(b,6).
heuristic(c,2).
heuristic(d,4).
heuristic(e,1).
heuristic(f,0).

% Best First Search
best_first(Node, Goal) :-
    Node = Goal,
    write('Goal reached: '),
    write(Goal), nl.

best_first(Node, Goal) :-
    edge(Node, Next, _),
    heuristic(Next, _),
    write('Visited: '),
    write(Next), nl,
    best_first(Next, Goal).
