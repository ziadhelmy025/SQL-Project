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
WHERE [condition]
<
=
>=
<=
LIKE
NOT
IN
BETWEEN*/
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
--==>>> SELECT name FROM persons WHERE gender = 'M' AND age > 20;
FROM persons
WHERE (gender = 'M' AND age < 20)
 OR (gender = 'F' AND age > 20);*/

 13. Selection using aggregate functions :

      -->AVG()
 --==>>> SELECT AVG(Salary) FROM Employees;
 --==>>> SELECT AVG(Salary) FROM Employees where DepartmentId = 1 ;
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