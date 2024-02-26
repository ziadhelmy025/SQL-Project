-- data type :
1. NUMERIC , DECIMAL 
SELECT CAST(123 AS DECIMAL(5,2)) -- 123.00
SELECT CAST(12345.12 AS NUMERIC(10,5)) -- 12345.12000

2. REAL , FLOAT 
SELECT CAST( PI() AS FLOAT) -- 3.14159265358979
SELECT CAST( PI() AS REAL) -- 3.141593

3. INTEGER 
4.MONEY , SMALLMONEY 
5.BINARY , VARBINARY 
6.CHAR , VARCHAR 
7.NCHAR ,NVARCHAR 
8.UNIQUEIDENTIFIER


--------------------------------------------------------------------------------

--NULL :
1.NULL IN WHERE 

SELECT * FROM Employees WHERE ManagerId IS NULL ;
SELECT * FROM Employees WHERE ManagerId IS NOT NULL ;

2.CREATE TABLE

CREATE TABLE MyTable
(
 MyCol1 INT NOT NULL, -- non-nullable
 MyCol2 INT NULL -- nullable
);

3.PRIMARY KEYS 

CREATE TABLE Employees (
 Id int NOT NULL,
 PRIMARY KEY (Id),
);

4.FOREIGHN KEYS

CREATE TABLE Department (
 Dept_Code CHAR (5) PRIMARY KEY,
 Dept_Name VARCHAR (20) UNIQUE
);

--------------------------------------------------------------------------------

1.Auto shop database :

--DEPARTMENTS :
CREATE TABLE Departments (
 Id INT NOT NULL AUTO_INCREMENT,
 Name VARCHAR(25) NOT NULL,
PRIMARY KEY(Id));
INSERT INTO Departments
 ([Id], [Name])
VALUES
 (1, 'HR'),
 (2, 'Sales'),
 (3, 'Tech')
;

--EMPLOYEES :

CREATE TABLE Employees (
 Id INT NOT NULL AUTO_INCREMENT,
 FName VARCHAR(35) NOT NULL,
 LName VARCHAR(35) NOT NULL,
 PhoneNumber VARCHAR(11),
 ManagerId INT,
 DepartmentId INT NOT NULL,Salary INT NOT NULL,
 HireDate DATETIME NOT NULL,
 PRIMARY KEY(Id),
 FOREIGN KEY (ManagerId) REFERENCES Employees(Id),
 FOREIGN KEY (DepartmentId) REFERENCES Departments(Id)
);
INSERT INTO Employees
 ([Id], [FName], [LName], [PhoneNumber], [ManagerId], 
[DepartmentId], [Salary], [HireDate])
VALUES
 (1, 'James', 'Smith', 1234567890, NULL, 1, 1000, '01-01-
2002'),
 (2, 'John', 'Johnson', 2468101214, '1', 1, 400, '23-03-
2005'),
 (3, 'Michael', 'Williams', 1357911131, '1', 2, 600, '12-05-
2009'),
 (4, 'Johnathon', 'Smith', 1212121212, '2', 1, 500, '24-07-
2016')

--CUSTOMERS 

CREATE TABLE Customers (
 Id INT NOT NULL AUTO_INCREMENT,
 FName VARCHAR(35) NOT NULL,
 LName VARCHAR(35) NOT NULL,
 Email varchar(100) NOT NULL,
 PhoneNumber VARCHAR(11),
 PreferredContact VARCHAR(5) NOT NULL,
PRIMARY KEY(Id)
);
INSERT INTO Customers
 ([Id], [FName], [LName], [Email], [PhoneNumber], 
[PreferredContact])
VALUES
 (1, 'William', 'Jones', 'william.jones@example.com', 
'3347927472', 'PHONE'),
 (2, 'David', 'Miller', 'dmiller@example.net', 
'2137921892', 'EMAIL'),
 (3, 'Richard', 'Davis', 'richard0123@example.com', NULL, 
'EMAIL')
;--CARS CREATE TABLE Cars (
 Id INT NOT NULL AUTO_INCREMENT,
 CustomerId INT NOT NULL,
 EmployeeId INT NOT NULL,
 Model varchar(50) NOT NULL,Status varchar(25) NOT NULL,
 TotalCost INT NOT NULL,
PRIMARY KEY(Id),
FOREIGN KEY (CustomerId) REFERENCES Customers(Id),
FOREIGN KEY (EmployeeId) REFERENCES Employees(Id)
);
INSERT INTO Cars
 ([Id], [CustomerId], [EmployeeId], [Model], [Status], 
[TotalCost])
VALUES
 ('1', '1', '2', 'Ford F-150', 'READY', '230'),
 ('2', '1', '2', 'Ford F-150', 'READY', '200'),
 ('3', '2', '1', 'Ford Mustang', 'WAITING', '100'),
 ('4', '3', '3', 'Toyota Prius', 'WORKING', '1254')
;