--.....................................................ZIAD DLI HELMY......................................


-- COUNT NUMBER OF ORDERS :

Select COUNT("ID") AS total_orders
FROM orders;
--.....................................................................

--COUNT NUMBER OF USERS :

Select COUNT("USER_ID") AS total_users
FROM orders;
--..............................................

--COUNT OF USERS PAR DISTRICT : 

SELECT "WAREHOUSE_ID", COUNT("USER_ID") AS users_count
FROM orders
GROUP BY "WAREHOUSE_ID"
ORDER BY 1
--.........................................................................

--COUNT NUMBER OF USERS PAR DISTRICT :

SELECT "DISTRICT_ID" , COUNT("USER_ID") AS users_count
FROM orders
GROUP BY "DISTRICT_ID"
ORDER BY 1
--............................................................................

--TOTAL dlivered :

SELECT 
  "ORDER_STATUS",
  COUNT(CASE WHEN "ORDER_STATUS" = 'delivered' THEN 1 END ) AS total_delvered
FROM
  orders
WHERE 
  "ORDER_STATUS" = 'delivered'
GROUP BY 
  "ORDER_STATUS";
--................................................................................

--TOTAL SALSE :

SELECT 
  "ORDER_STATUS",
  COUNT("ORDER_STATUS") AS total_delvered
FROM
  orders
GROUP BY 
  "ORDER_STATUS";
--.....................................................................................

--AVG TICKET SIZE : 

SELECT AVG("TICCKET_SIZE") AS ticket_avreg
FROM
  orders
  --.......................................................................................

  --MAX TICKER SIZE : 

  SELECT MAX("TICCKET_SIZE") AS ticket_maximm
FROM
  orders
  --..........................................................................................

--PER USERS TOTAL NUMBER PER OF ORDERS :

SELECT "USER_ID",
  COUNT("USER_ID") AS total_order
FROM
  orders
GROUP BY "USER_ID"
ORDER BY 1
--.................................................................................................