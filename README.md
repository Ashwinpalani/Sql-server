# SQL Server Cheat Sheet

## Basic Commands

### Select
```sql
SELECT column1, column2 
FROM table_name;
```
- **Usage Note**: Use `SELECT` to retrieve data from a database.
- **When to Use**: When you need to view data in tables.
- **How to Use**: Replace `column1`, `column2` with actual column names and `table_name` with your table.

### Insert
```sql
INSERT INTO table_name (column1, column2)
VALUES (value1, value2);
```
- **Usage Note**: Use `INSERT` to add new rows.
- **When to Use**: When new data needs to be added.
- **How to Use**: Provide the actual values for the columns.

### Update
```sql
UPDATE table_name
SET column1 = value1, column2 = value2
WHERE condition;
```
- **Usage Note**: Use `UPDATE` to modify existing rows.
- **When to Use**: When existing data requires changes.
- **How to Use**: Specify the condition for the rows to be updated.

### Delete
```sql
DELETE FROM table_name
WHERE condition;
```
- **Usage Note**: Use `DELETE` to remove rows.
- **When to Use**: When specific data needs to be removed.
- **How to Use**: Define a condition to specify which rows to delete.

## Joins

### Inner Join
```sql
SELECT columns
FROM table1
INNER JOIN table2
ON table1.column = table2.column;
```
- **Usage Note**: Retrieves records with matching values.
- **When to Use**: When you need data from multiple tables that are related.
- **How to Use**: Ensure to match the columns for joining.

### Left Join
```sql
SELECT columns
FROM table1
LEFT JOIN table2
ON table1.column = table2.column;
```
- **Usage Note**: Retrieves all records from the left table and matched records from the right table.
- **When to Use**: When you want all records from one table regardless of a match.
- **How to Use**: Replace `columns` and set a proper condition.

## Functions

### Aggregate Functions
- **COUNT()**: Counts the number of rows.
- **SUM()**: Calculates the sum of a numeric column.
- **AVG()**: Returns the average value.

### String Functions
- **CONCAT()**: Joins two or more strings.
- **LEN()**: Returns the length of a string.

## Final Note
Remember to always test your SQL queries in a safe environment before running them in production systems.