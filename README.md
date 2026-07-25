#BFS
START

Read graph
Read starting node

Create an empty visited list
Create a queue
Insert starting node into queue

WHILE queue is not empty
    Remove first node from queue

    IF node is not visited
        Mark node as visited
        Insert all neighbouring nodes into queue
    END IF
END WHILE

Print visited nodes

STOP

#DFS

START

Read graph
Read starting node

Mark current node as visited

FOR each neighbour of current node
    IF neighbour is not visited
        Call DFS(neighbour)
    END IF
END FOR

Print visited nodes

STOP


A*SEARCH

START

Read graph
Read heuristic values
Read source node and goal node

Create a priority queue
Insert source node with f = g + h

WHILE priority queue is not empty
    Remove node with minimum f value

    IF node is goal
        Print shortest path and cost
        STOP
    END IF

    Mark node as visited

    FOR each neighbour of current node
        Calculate:
            g = current cost + edge cost
            f = g + heuristic(neighbour)
        Insert neighbour into priority queue
    END FOR
END WHILE

Print "No path found"

STOP

#MINI-MAX

START

Read 8 leaf node values

FUNCTION minimum(node, depth, isMax)

    IF depth = 3
        RETURN leaf value
    END IF

    IF isMax = TRUE
        RETURN maximum of
            minimum(left child, depth + 1, FALSE)
            minimum(right child, depth + 1, FALSE)
    ELSE
        RETURN minimum of
            minimum(left child, depth + 1, TRUE)
            minimum(right child, depth + 1, TRUE)
    END IF

END FUNCTION

Call minimum(0, 0, TRUE)

Print optimal value

STOP
