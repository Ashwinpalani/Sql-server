**SQL Server Cheat Sheet (Interview Focus):**

**1. DDL – Data Definition Language:**

Create Table
CREATE TABLE Employees (
    EmpId INT PRIMARY KEY,
    Name VARCHAR(100),
    Department VARCHAR(50),
    Salary DECIMAL(10,2),
    JoiningDate DATE
);

Alter Table – Add Column
ALTER TABLE Employees
ADD Email VARCHAR(150);


Alter Column
ALTER TABLE Employees
ALTER COLUMN Name VARCHAR(200);

Drop Column
ALTER TABLE Employees
DROP COLUMN Email;

Rename Column
EXEC sp_rename 'Employees.Name', 'EmpName', 'COLUMN';
Drop Table
DROP TABLE Employees;


**2️⃣ DML – Data Manipulation Language**


INSERT INTO Employees (EmpId, Name, Department, Salary, JoiningDate)
VALUES (1, 'Dillip', 'IT', 60000, '2024-01-10');

UPDATE Employees
SET Salary = 70000
WHERE EmpId = 1;

DELETE FROM Employees
WHERE EmpId = 1;

SELECT * FROM Employees;


3️⃣ Aggregate Functions (Most Asked)
COUNT
SELECT COUNT(*) AS TotalEmployees
FROM Employees;

SUM
SELECT SUM(Salary) AS TotalSalary
FROM Employees;

AVG
SELECT AVG(Salary) AS AvgSalary
FROM Employees;

MIN
SELECT MIN(Salary) AS MinSalary
FROM Employees;


MAX
SELECT MAX(Salary) AS MaxSalary
FROM Employees;

Aggregate with GROUP BY
SELECT Department, COUNT(*) AS EmpCount, AVG(Salary) AS AvgSalary
FROM Employees
GROUP BY Department;

HAVING (Filter Aggregates)
SELECT Department, COUNT(*) AS EmpCount
FROM Employees
GROUP BY Department
HAVING COUNT(*) > 5;




4️⃣ JOINS (Very Important)
Assume another table:
CREATE TABLE Departments (
    DeptId INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
________________________________________
INNER JOIN
👉 Returns matching records
SELECT e.Name, d.DeptName
FROM Employees e
INNER JOIN Departments d
ON e.Department = d.DeptName;
________________________________________
LEFT JOIN
👉 All from left + matched from right
SELECT e.Name, d.DeptName
FROM Employees e
LEFT JOIN Departments d
ON e.Department = d.DeptName;
________________________________________
RIGHT JOIN
SELECT e.Name, d.DeptName
FROM Employees e
RIGHT JOIN Departments d
ON e.Department = d.DeptName;
________________________________________
FULL OUTER JOIN
SELECT e.Name, d.DeptName
FROM Employees e
FULL OUTER JOIN Departments d
ON e.Department = d.DeptName;
________________________________________
SELF JOIN
SELECT A.Name AS Employee, B.Name AS Manager
FROM Employees A, Employees B
WHERE A.EmpId = B.EmpId;


5️⃣ Stored Procedure
Create Procedure
CREATE PROCEDURE GetEmployeesByDept
    @DeptName VARCHAR(50)
AS
BEGIN
    SELECT *
    FROM Employees
    WHERE Department = @DeptName;
END;
Execute
EXEC GetEmployeesByDept @DeptName = 'IT';
________________________________________
Procedure with Insert
CREATE PROCEDURE AddEmployee
    @Id INT,
    @Name VARCHAR(100),
    @Dept VARCHAR(50),
    @Salary DECIMAL(10,2)
AS
BEGIN
    INSERT INTO Employees (EmpId, Name, Department, Salary)
    VALUES (@Id, @Name, @Dept, @Salary);
END;
________________________________________
6️⃣ Indexes
Create Index
CREATE INDEX idx_emp_name
ON Employees(Name);
Unique Index
CREATE UNIQUE INDEX idx_emp_email
ON Employees(Email);
________________________________________
7️⃣ Constraints
CREATE TABLE Users (
    Id INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE,
    Age INT CHECK (Age >= 18),
    Country VARCHAR(50) DEFAULT 'India'
);
________________________________________
8️⃣ Subqueries
Single Row
SELECT *
FROM Employees
WHERE Salary > (
    SELECT AVG(Salary) FROM Employees
);
IN Clause
SELECT *
FROM Employees
WHERE Department IN (
    SELECT DeptName FROM Departments
);
________________________________________
9️⃣ Window Functions (Trending Interview Topic)
ROW_NUMBER
SELECT Name, Salary,
       ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RankNo
FROM Employees;
RANK
SELECT Name, Salary,
       RANK() OVER (ORDER BY Salary DESC) AS RankNo
FROM Employees;
DENSE_RANK
SELECT Name, Salary,
       DENSE_RANK() OVER (ORDER BY Salary DESC) AS RankNo
FROM Employees;
________________________________________
🔟 Transactions
BEGIN TRANSACTION;

UPDATE Employees
SET Salary = Salary + 5000
WHERE Department = 'IT';

-- If success
COMMIT;

-- If error
ROLLBACK;
________________________________________
1️⃣1️⃣ Views
CREATE VIEW IT_Employees AS
SELECT Name, Salary
FROM Employees
WHERE Department = 'IT';
SELECT * FROM IT_Employees;
________________________________________
1️⃣2️⃣ Triggers
CREATE TRIGGER trg_after_insert
ON Employees
AFTER INSERT
AS
BEGIN
    PRINT 'Employee record inserted';
END;
________________________________________
🔥 Interview Rap

