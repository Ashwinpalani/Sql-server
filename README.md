# SQL Server Cheat Sheet

## DDL (Data Definition Language)
- **CREATE TABLE**: Creates a new table.
  ```sql
  CREATE TABLE Employees (
      ID int PRIMARY KEY,
      Name varchar(255),
      Department varchar(255)
  );
  ```
- **ALTER TABLE**: Modify an existing table.
  ```sql
  ALTER TABLE Employees ADD Email varchar(255);
  ```
- **DROP TABLE**: Deletes a table.
  ```sql
  DROP TABLE Employees;
  ```

## DML (Data Manipulation Language)
- **INSERT**: Adds new records to a table.
  ```sql
  INSERT INTO Employees (Name, Department) VALUES ('John Doe', 'Sales');
  ```
- **UPDATE**: Modifies existing records.
  ```sql
  UPDATE Employees SET Department = 'Marketing' WHERE Name = 'John Doe';
  ```
- **DELETE**: Removes records from a table.
  ```sql
  DELETE FROM Employees WHERE Name = 'John Doe';
  ```

## Aggregate Functions
- **COUNT**: Counts the number of rows.
  ```sql
  SELECT COUNT(*) FROM Employees;
  ```
- **SUM**: Sums a numeric column.
  ```sql
  SELECT SUM(Salary) FROM Employees WHERE Department = 'Sales';
  ```
- **AVG**: Averages a numeric column.
  ```sql
  SELECT AVG(Salary) FROM Employees;
  ```

## JOINs
- **INNER JOIN**: Combines rows from two or more tables based on a related column.
  ```sql
  SELECT Employees.Name, Departments.DepartmentName 
  FROM Employees 
  INNER JOIN Departments ON Employees.DepartmentID = Departments.ID;
  ```
- **LEFT JOIN**: Returns all rows from the left table and matched rows from the right table.
  ```sql
  SELECT Employees.Name, Departments.DepartmentName 
  FROM Employees 
  LEFT JOIN Departments ON Employees.DepartmentID = Departments.ID;
  ```

## Stored Procedures
- **Create a Stored Procedure**:
  ```sql
  CREATE PROCEDURE GetEmployeeCount AS
  BEGIN
      SELECT COUNT(*) FROM Employees;
  END;
  ```

## Indexes
- **Create an Index**:
  ```sql
  CREATE INDEX idx_department ON Employees (Department);
  ```

## Constraints
- **Add a Constraint**:
  ```sql
  ALTER TABLE Employees ADD CONSTRAINT CHK_Department CHECK (Department IS NOT NULL);
  ```

## Subqueries
- **Using a Subquery**:
  ```sql
  SELECT Name FROM Employees WHERE DepartmentID = (SELECT ID FROM Departments WHERE DepartmentName = 'Sales');
  ```

## Window Functions
- **Using ROW_NUMBER()**:
  ```sql
  SELECT Name, ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNum
  FROM Employees;
  ```

## Transactions
- **Using a Transaction**:
  ```sql
  BEGIN TRANSACTION;
  INSERT INTO Employees (Name, Department) VALUES ('Jane Doe', 'HR');
  COMMIT;
  ```

## Views
- **Creating a View**:
  ```sql
  CREATE VIEW EmployeeView AS
  SELECT Name, Department FROM Employees;
  ```

## Triggers
- **Creating a Trigger**:
  ```sql
  CREATE TRIGGER trgAfterInsert
  ON Employees
  AFTER INSERT
  AS
  BEGIN
      PRINT 'A new employee has been added.';
  END;
  ```

---

### Notes:
- Ensure to back up your database before making structural changes.
- Use transactions where applicable to maintain data integrity.
- Regularly update your indexes to improve query performance.