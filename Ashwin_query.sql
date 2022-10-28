CREATE TABLE ASHWIN_TA1
(
ID INT identity(1,1) PRIMARY KEY,
FIRST_NAME VARCHAR(40),
LAST_NAME VARCHAR(40),
SALARY DECIMAL(8,2),
DEPARTMENT_ID INT,
YEAR_OF_JOINING DATE,
YEAR_OF_RELIEVING DATE
)
CREATE TABLE ASHWIN_TA2
(
DEPARTMENT_ID INT PRIMARY KEY,
MANAGER_ID INT,
DEPARTMENT_NAME VARCHAR(50)
)
SELECT * FROM ASHWIN_TA1
SELECT * FROM KALEESWARAN_ORG1
SELECT * FROM ASHWIN_TA2


insert into ASHWIN_TA1(FIRST_NAME,LAST_NAME,SALARY,DEPARTMENT_ID,YEAR_OF_JOINING,YEAR_OF_RELIEVING) values('ARUN','KUMAR',2000,10,'2016-03-03','2019-04-04'),('VARUN','KUMAR',2500,12,'2016-06-05','2019-02-04'),('SARAN','KUMAR',5000,32,'2015-06-05','2019-08-04'),('SARATH','KUMAR',6000,90,'2015-06-05','2019-08-04'),('SARAN','KUMAR',6000,30,'2017-03-11','2019-08-04')


insert into ASHWIN_TA2(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_NAME) values(25,NULL,NULL)
DELETE ASHWIN_TA2 WHERE DEPARTMENT_ID = 25

--1.Write a query to display all the name which starts with S

SELECT FIRST_NAME FROM ASHWIN_TA1 WHERE FIRST_NAME LIKE 'S%'

--2.Write a query to display all the name starts with S and ends with character n.

SELECT FIRST_NAME FROM ASHWIN_TA1 WHERE FIRST_NAME LIKE 'S%N'

--3.Write a query to display all the employees who are all working for department 90 and their name must starts with ‘S’.

SELECT FIRST_NAME FROM ASHWIN_TA1 WHERE FIRST_NAME LIKE 'S%' AND DEPARTMENT_ID=90

--4.Display all the department id which contain 2 as 2nd character.

SELECT FIRST_NAME,DEPARTMENT_ID FROM ASHWIN_TA1 WHERE DEPARTMENT_ID LIKE '_2%'

--5.Write a query to display all the employees who are all working in department 10,20,50 and 90.

SELECT FIRST_NAME FROM ASHWIN_TA1 WHERE DEPARTMENT_ID IN (10,20,50,90)

--6.Write a query to display who are all getting salary between 5000 and 7000.

SELECT FIRST_NAME FROM ASHWIN_TA1 WHERE SALARY BETWEEN 5000 AND 7000


--7.Display First_name, salary, department_id and manager_id of the employee who dont have manager

SELECT K1.FIRST_NAME,K1.SALARY,K1.DEPARTMENT_ID,K2.MANAGER_ID FROM ASHWIN_TA1 K1 JOIN ASHWIN_TA2 K2 ON K1.DEPARTMENT_ID=K2.DEPARTMENT_ID WHERE K2.MANAGER_ID IS NULL

--8.Display all the records in employees table and sort the first name in ascending order.

SELECT * FROM ASHWIN_TA1 ORDER BY FIRST_NAME ASC

--9.Display first name, department id and salary from employees table and sort the records ( sort department id in ascending order and salary in descending order) 

SELECT FIRST_NAME,DEPARTMENT_ID,SALARY FROM ASHWIN_TA1 ORDER BY DEPARTMENT_ID ,SALARY DESC

--10.Display first three characters from first name.

SELECT SUBSTRING( FIRST_NAME, 1, 3 ) AS FIRST_NAME FROM ASHWIN_TA1;

--11.Display last two character from last name.

SELECT RIGHT( LAST_NAME, 2 ) AS LAST_NAME FROM ASHWIN_TA1;

--12.Display all the first name and position of a in that name (first occurrence of a). 

SELECT FIRST_NAME,CHARINDEX('A', FIRST_NAME) AS INDEXOFa FROM ASHWIN_TA1 

--13. Write a query to select maximum salary from employees table.

SELECT * FROM ASHWIN_TA1 WHERE SALARY=(SELECT MAX(SALARY) FROM ASHWIN_TA1)

--14.Write a query to select second maximum salary from employees table.

SELECT  FIRST_NAME,SALARY FROM ASHWIN_TA1 WHERE SALARY=(SELECT  MAX(SALARY) FROM ASHWIN_TA1 WHERE SALARY < (SELECT MAX(SALARY) FROM ASHWIN_TA1))

--15.Display average salary in the department 90

SELECT AVG(SALARY) AS AVERAGE FROM ASHWIN_TA1 WHERE DEPARTMENT_ID=90

--16.Display number of employees joined in each year into department 30.

SELECT COUNT(FIRST_NAME) AS COUNTS,YEAR_OF_JOINING FROM ASHWIN_TA1 WHERE DEPARTMENT_ID=30 GROUP BY YEAR_OF_JOINING

--17.Display average salary for employees who did a job in the past.

SELECT  AVG(SALARY) AS AVERAGE FROM ASHWIN_TA1 WHERE YEAR_OF_RELIEVING <= GETDATE()

--18..Display the month in which more than 5 employees joined in any department

SELECT MONTH(YEAR_OF_JOINING) AS MONTHS ,COUNT(ID) AS COUNTS  FROM ASHWIN_TA1 GROUP BY MONTH(YEAR_OF_JOINING) HAVING COUNT(ID)>5

--19.Display employee last name, starting date for all jobs from 2015 to 2017.

SELECT FIRST_NAME,LAST_NAME,YEAR_OF_JOINING FROM ASHWIN_TA1 WHERE YEAR(YEAR_OF_JOINING) BETWEEN 2014 AND 2017

--20.Display years in which more than 3 employees joined.

  SELECT YEAR(YEAR_OF_JOINING) AS YEARS,COUNT(ID) AS COUNTS FROM ASHWIN_TA1  GROUP BY YEAR(YEAR_OF_JOINING) HAVING COUNT(ID)>3        

--21.Display employee ID for jobs with average salary more than 10000. 	

  SELECT AVG(SALARY) AS AVERAGES,ID FROM ASHWIN_TA1 GROUP BY ID HAVING AVG(SALARY)>=10000
 
--22.Display the number of days between working for all employees.

  SELECT FIRST_NAME, DATEDIFF(DAY,YEAR_OF_JOINING,YEAR_OF_RELIEVING) AS WORKING_DAYS FROM ASHWIN_TA1 
  
--23.Display employees who joined in the current year(2017). 

  SELECT * FROM ASHWIN_TA1 WHERE YEAR(YEAR_OF_JOINING)=2017

--24.Display first name in upper case and last name in lower case.

SELECT UPPER(FIRST_NAME) FIRST_NAME , LOWER(LAST_NAME) LAST_NAME FROM ASHWIN_TA1 

--25.Display the length of first name for employees where last name contain character ‘b’ after 3rd position.

SELECT FIRST_NAME,LEN(FIRST_NAME) AS LENGTHS,CHARINDEX('R', LAST_NAME) as INDEXS FROM ASHWIN_TA1  WHERE CHARINDEX('R',LAST_NAME)>3

--26.Display first name and experience of the employees.

SELECT FIRST_NAME ,DATEDIFF(YEAR,YEAR_OF_JOINING,YEAR_OF_RELIEVING) AS EXPERIENCE FROM ASHWIN_TA1 

--27.Display employees who joined in the month of March. 

SELECT * FROM ASHWIN_TA1 WHERE MONTH(YEAR_OF_JOINING) = '03'

--28.write a SQL query to find those employees who earn more than the average salary. 

SELECT FIRST_NAME,SALARY FROM ASHWIN_TA1  WHERE SALARY > ( SELECT AVG(SALARY) FROM ASHWIN_TA1 )

--29.Difference between primary key and Foreign key with exmple.

SELECT * FROM ASHWIN_TA1 K1 LEFT OUTER JOIN ASHWIN_TA2 K2 ON K1.DEPARTMENT_ID=K2.DEPARTMENT_ID

--30.Replace ‘null’ value to ‘AAA’ 

SELECT DEPARTMENT_ID, ISNULL(MANAGER_ID,0) AS MANAGER_ID ,ISNULL(DEPARTMENT_NAME,'AAA') AS DEPARTMENT_NAME FROM ASHWIN_TA2;

--31.Create View table for ID,FIRST_NAME,LAST_NAME, DEPARTMENT_ID,DEPARTMENT_NAME.

CREATE VIEW[AK ASHWIN_TA1] AS SELECT ID,FIRST_NAME,LAST_NAME, K1.DEPARTMENT_ID,DEPARTMENT_NAME FROM ASHWIN_TA1 K1 FULL OUTER JOIN ASHWIN_TA2 K2 ON K1.DEPARTMENT_ID=K2.DEPARTMENT_ID
SELECT * FROM [AK ASHWIN_TA1] 

--32.Create SYNONYMS for EMPLOYEE table.

CREATE SYNONYM ASHWIN_TA FOR ASHWIN_TA1 
 
 SELECT * FROM ASHWIN_TA


--33.Create a procedure for who are joined between 2 dates.

CREATE PROCEDURE ASHWIN_OR
AS
SELECT * FROM ASHWIN_TA1
GO;

EXEC ASHWIN_OR;

CREATE PROCEDURE ASHWIN_ORG9 AS SELECT FIRST_NAME FROM ASHWIN_TA1 WHERE YEAR_OF_JOINING BETWEEN '2017-03-11' AND '2019-03-11';

EXEC ASHWIN_ORG9;

--34.Create a procedure for insert a rows in Department table.

CREATE PROCEDURE INSERTS
@dep_id INT,
@man_id INT,
@dep_name VARCHAR(50)
AS
BEGIN
insert into ASHWIN_TA2(DEPARTMENT_ID,MANAGER_ID,DEPARTMENT_NAME) values(@dep_id,@man_id,@dep_name)
END

EXEC INSERTS 
@dep_id =35,
@man_id =1,
@dep_name =HR

--35.write a query for convert ‘2006-12-30 00:38:54.840’ to 20061230003854 

select replace(convert(varchar, '2006-12-30',101),'-','')+ replace(convert(varchar, '00:38:54',108),':','')