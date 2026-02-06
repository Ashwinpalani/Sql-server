# SQL Server README

Welcome to the SQL Server repository! Below are key SQL concepts along with examples and usage notes.

---

## 1. Selecting Data

### Query
```sql
SELECT * FROM Users;
```
### Usage Notes
- Use `SELECT` to retrieve data from one or more tables.
- Always specify fields instead of `*` in production for better performance.

---

## 2. Inserting Data

### Query
```sql
INSERT INTO Users (Username, Email) VALUES ('john_doe', 'john@example.com');
```
### Usage Notes
- Ensure that you validate data before insertion to maintain database integrity.

---

## 3. Updating Data

### Query
```sql
UPDATE Users SET Email = 'john.doe@example.com' WHERE Username = 'john_doe';
```
### Usage Notes
- Always include a `WHERE` clause to avoid updating all records.

---

## 4. Deleting Data

### Query
```sql
DELETE FROM Users WHERE Username = 'john_doe';
```
### Usage Notes
- Be cautious with `DELETE` operations; consider using `TRUNCATE` if removing all records.

---

## 5. Creating a Table

### Query
```sql
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Username VARCHAR(50) NOT NULL,
    Email VARCHAR(100) NOT NULL
);
```
### Usage Notes
- Always define primary keys for data integrity and fast access.

---

## 6. Indexing

### Query
```sql
CREATE INDEX idx_username ON Users (Username);
```
### Usage Notes
- Indexes can significantly speed up data retrieval but can slow down insert/update operations.

---

## 7. Joins

### Query
```sql
SELECT Users.Username, Orders.OrderID
FROM Users
JOIN Orders ON Users.UserID = Orders.UserID;
```
### Usage Notes
- Joins are essential for combining data from multiple tables based on a related column.

---

## Conclusion

Feel free to contribute to this repository, and submit any enhancements or corrections!