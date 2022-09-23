/*You are given a table, BST, containing two columns: N and P, where N represents the value of a node in BST, and P is the parent of N.
Write a query to find the node type of BST ordered by the value of the node. Output one of the following for each node:

Root: If node is root node.
Leaf: If node is leaf node.
Inner: If node is neither root nor leaf node. */


SELECT DISTINCT
       node.N,
       CASE
           WHEN parent.P IS NULL THEN
               'Leaf'
           WHEN parent.P IS NOT NULL
                AND child.N IS NOT NULL THEN
               'Inner'
           ELSE
               'Root'
       END
FROM BST node
    LEFT JOIN BST parent
        ON node.N = parent.P
    LEFT JOIN BST child
        ON node.P = child.N
ORDER BY node.N;
