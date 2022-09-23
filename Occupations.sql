/*Pivot the Occupation column in OCCUPATIONS so that each Name is sorted alphabetically and displayed underneath its corresponding Occupation. 
The output column headers should Doctor, Professor, Singer, and Actor, respectively.


Enter your query here.
Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
*/
SELECT Doctor,
       Professor,
       Singer,
       Actor
FROM
(
    SELECT Name,
           Occupation,
           ROW_NUMBER() OVER (PARTITION BY Occupation ORDER BY Name) rn
    FROM Occupations
) AS source
PIVOT
(
    MAX(name)
    FOR Occupation IN (Doctor, Professor, Singer, Actor)
) AS PVT;
