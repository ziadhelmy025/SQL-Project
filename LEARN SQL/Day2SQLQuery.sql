--SELECT :

1. SELECT *
--==>>> SELECT * FORM [table_name];

2. SELECT [table_name].[col_name]
--==>>> SELECT A.col1, A.Col2 FROM A;

3. SELECT col_1 AS NECNAME ;
--==>>>
/*SELECT
 FName AS "First Name",
 MName AS "Middle Name",
 LName AS "Last Name"
FROM Employees */

4. SELECT col_1 , col_2 , col_3 FROM table_name ;
--==>>>
/*SELECT
 PhoneNumber,
 Email,
 PreferredContact
FROM Customers*/

5. SELECT col_1 , col_2 , col_3
FROM table_name
FETCH FIRST 10 ROWS ONLY ;
--==>>>
/*SELECT Id, ProductName, UnitPrice, Package
FROM Product
ORDER BY UnitPrice DESC
FETCH FIRST 10 ROWS ONLY*/

6. SELECT col_1, col_2, col_3
FROM table_name
WHERE [condition]--==>>>/*[condition]>
<
=
>=
<=
LIKE
NOT
IN
BETWEEN*/--==>>> SELECT * FROM Cars WHERE status = 'READY'7. SELECT .... CASE--==>>>/*SELECT CASE WHEN Col1 < 50 THEN 'under' ELSE 'over' END
threshold
FROM TableName*/

8. Select columns with names matching reserved words :
--==>>>
/*SELECT
 "ORDER",
 ID
FROM ORDERS*/

9. Selection using table names :
--==>>>
/*SELECT e.Fname, e.LName, m.Fname AS ManagerFirstName
FROM Employees e
JOIN Managers m ON e.ManagerId = m.Id*/

10. SELECT ... AND :
--==>>> SELECT name FROM persons WHERE gender = 'M' AND age > 20;11. SELECT ... OR :--==>>> SELECT name FROM persons WHERE gender = 'M' OR age < 20;12. SELECT ... AND , OR :--==>>>/*SELECT name
FROM persons
WHERE (gender = 'M' AND age < 20)
 OR (gender = 'F' AND age > 20);*/

 13. Selection using aggregate functions :

      -->AVG()
 --==>>> SELECT AVG(Salary) FROM Employees;
 --==>>> SELECT AVG(Salary) FROM Employees where DepartmentId = 1 ; --==>>> SELECT AVG(Salary) FROM Employees GROUP BY DepartmentId ;      -->MIN()--==>>> SELECT MIN(Salary) FROM Employees ;     -->MAX()--==>>>SELECT MAX(Salary) FROM Employees ;     -->COUNT()--==>>> SELECT MAX(Salary) FROM Employees ;--==>>> SELECT COUNT(*) FROM Employees where ManagerId IS NOT NULL ;--==>>> SELECT COUNT(ManagerId) FROM Employees ;--==>>> SELECT COUNT(DISTINCT DepartmentId) FROM Employees ;     -->SUM()--==>>> SELECT SUM(Salary) FROM Employees ;14. SELECT ... ORDER BY :--==>>> SELECT * FROM Employees ORDER BY LName ;--==>>> SELECT * FROM Employees ORDER BY LName ASC, FName ASC ;--==>>> SELECT Id, FName, LName, PhoneNumber FROM Employees ORDER BY 3 ;15. Choose unique values :--==>>>/*SELECT DISTINCT ContinentCode
FROM Countries;*/

16. Select rows from multiple tables :
--==>>>
/*SELECT *
FROM
 table1,
 table2
SELECT
 table1.column1,
 table1.column2,
 table2.column1
FROM
 table1,
 table2*/