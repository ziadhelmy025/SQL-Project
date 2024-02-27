--GROUP BY :

1. ex for GROUP BY :
--==>>>
/*SELECT EmpID, SUM (MonthlySalary)
FROM Employee
GROUP BY EmpID*/

2. GROUP BY ... HAVING :
--==>>>
/*SELECT
 a.Id,
 a.Name,
COUNT(*) BooksWritten
FROM BooksAuthors ba
INNER JOIN Authors a ON a.id = ba.authorid
GROUP BY
 a.Id,
 a.Name
HAVING COUNT(*) > 1 -- HAVING BooksWritten > 1 يكافئ
;*/

3. GROUP BY ... ORDER BY :
--==>>>
/*SELECT GreatHouseAllegience House, Count(*) 
Number_of_Westerosians
FROM Westerosians
GROUP BY GreatHouseAllegience
ORDER BY Number_of_Westerosians Desc*/

4. WITH DATA CUBE :
--==>>>
/*select Food,Brand,Total_amount
from Table
group by Food,Brand,Total_amount with cube*/

5. WITH ROLL UP :
--==>>>
/*select Food,Brand,Total_amount
from Table
group by Food,Brand,Total_amount with roll up*/

6. ORDER BY :
--==>>> SELECT DisplayName, JoinDate, Reputation FROM Users ORDER BY 3

7. TOP ... ORDER BY :
--==>>>
/*SELECT TOP 5 DisplayName, Reputation
FROM Users
ORDER BY Reputation desc*/

8. ORDER BY ... COL :
--==>>>
/*SELECT DisplayName, JoinDate, Reputation FROM Users ORDER BY
JoinDate, Reputation*/

9. GROUP BY AND DISTINCT :
--==>>> DISTINCT
/*SELECT DISTINCT
 storeName,
 userId
FROM
 orders;*/
 --==>>> GROUP BY 
 /*SELECT
 storeName,
 COUNT(*) AS total_nr_orders,
 COUNT(DISTINCT userId) AS nr_unique_customers,
 AVG(orderValue) AS average_order_value,
 MIN(orderDate) AS first_order,
 MAX(orderDate) AS lastOrder
FROM
 orders
GROUP BY
 storeName;*/

10. AND ... OR :
--==>>> select Name from table where Age>10 AND City='Prague'--==>>> select Name from table where Age=10 OR City='Prague'11. CASE :--==>>> ex for CASE :/*SELECT
COUNT(Id) AS ItemsCount,
SUM ( CASE
WHEN PriceRating = 'Expensive' THEN 1
ELSE 0
 END
 ) AS ExpensiveItemsCount
FROM ItemSales*/12. SELECT ... CASE :--==>>>/*SELECT Id, ItemId, Price,
 CASE WHEN Price < 10 THEN 'CHEAP'
WHEN Price < 20 THEN 'AFFORDABLE'
ELSE 'EXPENSIVE'
 END AS PriceRating
FROM ItemSales*/

13. UPDATE ... CASE :
--==>>>
/*UPDATE ItemPrice
SET Price = Price *
 CASE ItemId
WHEN 1 THEN 1.05
WHEN 2 THEN 1.10
WHEN 3 THEN 1.15
ELSE 1.00
 END*/

 14. NULL ... CASE :
 --==>>>
 /*SELECT ID
 ,REGION
 ,CITY
 ,DEPARTMENT
 ,EMPLOYEES_NUMBER
 FROM DEPT
 ORDER BY
 CASE WHEN REGION IS NULL THEN 1
 ELSE 0
 END,
 REGION*/

 15. ORDER BY ... CASE :
 --==>>>
 /*SELECT Id, Date1, Date2
FROM YourTable
ORDER BY CASE
 WHEN COALESCE(Date1, '1753-01-01') < COALESCE(Date2, 
'1753-01-01') THEN Date1
 ELSE Date2
 END*/