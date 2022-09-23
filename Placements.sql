
/*You are given three tables: Students, Friends and Packages. 
Students contains two columns: ID and Name. Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend). 
Packages contains two columns: ID and Salary (offered salary in $ thousands per month).
Write a query to output the names of those students whose best friends got offered a higher salary than them. 
Names must be ordered by the salary amount offered to the best friends. 
It is guaranteed that no two students got same salary offer.*/

SELECT std.Name
FROM Students std,
     Friends frnd,
     Packages pkg1,
     Packages pkg2
WHERE std.ID = frnd.ID
      AND std.ID = pkg1.ID
      AND frnd.Friend_ID = pkg2.ID
      AND pkg1.Salary < pkg2.Salary
ORDER BY pkg2.Salary;
