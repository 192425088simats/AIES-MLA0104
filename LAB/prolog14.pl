% Graph
edge(a,b).
edge(a,c).
edge(b,d).
edge(b,e).
edge(c,f).
edge(e,g).

% DFS Rule
dfs(Goal,Goal) :-
    write(Goal), nl.

dfs(Start,Goal) :-
    write(Start),
    write(' -> '),
    edge(Start,Next),
    dfs(Next,Goal).
