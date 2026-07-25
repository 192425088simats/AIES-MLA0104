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

