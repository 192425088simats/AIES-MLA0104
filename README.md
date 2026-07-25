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
