create database EMP;
use EMP;

create database EMP;
use EMP;

create table Employee(EMPLOYEE_ID int,FIRST_NAME varchar(100),LAST_NAME varchar(50),SALARY int,JOINING_DATE varchar(100),DEPARTMENT varchar(100),primary key(EMPlOYEE_ID)); 

insert into Employee(EMPLOYEE_ID,FIRST_NAME,LAST_NAME,SALARY,JOINING_DATE,DEPARTMENT)
values
(1,'Venkatesh','S',10000,'08/28/2015','BANKING'),
(2,'Ragavi','P',75000,'08/28/2015','BUSINESS'),
(3,'Gopinath','C',50000,'03/02/2016','PHARMA'),
(4,'Dinesh','G',50000,'03/02/2016','INSURANCE'),
(5,'Saibabu','E',40000,'07/08/2017','SOFTWARE'),
(6,'Hasan','S',29000,'07/08/2017','MANUFACTURING'),
(7,'Divya','P',33000,'07/08/2017','HEALTHCARE'),
(8,'Aravindhan','R',40000,'07/08/2017','HEALTHCARE'),
(9,'Sathish','MD',45000,'03/02/2016','AUTOMOBILE'),
(10,'Prasanth','PKP',34000,'03/02/2016','INSURANCE'),
(11,'Vijay','R',25684,'03/02/2016','BUSINESS'),
(12,'Sivakumar','K',54789,'03/02/2016','SOFTWARE');

select * from Employee;
create table Incentives(EMP_REF_ID int,INCENTIVE_DATE varchar(50),INCENTIVE_AMOUNT bigint,foreign key(EMP_REF_ID) references Employee(EMPLOYEE_ID));
insert  into Incentives(EMP_REF_ID,INCENTIVE_DATE,INCENTIVE_AMOUNT)
values(1,'01-Feb-16',5000),
(2,'01-Feb-16',3000),
(3,'01-Feb-17',4000),
(1,'01-JAN-17',45000),
(2,'01-JAN-17',3500);

select * from Incentives;

drop table Incentives;

-- SQL Queries detaiks from the employee Table

-- 1. Get all Employee details from the Employess table

select * from Employee;

-- 2. Get First_Name,Last_Name from Employee table

select FIRST_NAME,LAST_NAME from Employee;

-- 3. Get First_Name from Employee table using alias name "Employee Name"

select FIRST_NAME as Employee_Name from Employee;

-- 4. Get First_Name from employee table in Uppercase

select UPPER(FIRST_NAME) from Employee;

-- .5 Get Last_Name from Employee table in lower case

select lower(Last_Name) from Employee; 

-- 6.Get Unique DEPARTMENT from Employee table

select distinct DEPARTMENT from Employee;

-- 7.Select First 3 Characters of FIRST_NAME from Employee

select substring(FIRST_NAME ,1,3) from Employee;

-- 8.Get Positiion of 'a' in name 'ragavi' from employee table

select position('a' in 'ragavi');

-- 9. Get FIRST_NAME from Employee table after Removing White space from right Side

select rtrim(FIRST_NAME) from Employee;

-- 10. Get FIRST_NAME from Employee table after Removing White space from left Side

select ltrim(FIRST_NAME) from Employee;

-- 11. Get length of FIRST_NAME from Employee table

select length(FIRST_NAME) from Employee;

-- 12. Get First_Name for Employee table after replacing 'a' with $

select replace(FIRST_NAME ,'a','$') from Employee;

-- 13. Get First_Name and LAst_NAme as Single Colummn from Employee table Separated by 'a_'

select concat(FIRST_NAME,'_',LAST_NAME) from Employee;

-- 14. Get First Name,Joining Year,Joining Month and Joining Data from Employee table

select FIRST_NAME,substring(JOINING_DATE,7,4) as JOINING_YEAR, substring(JOINING_DATE,1,2) as JOINING_MONTH,substring(JOINING_DATE,4,2) as JOINING_DATE from Employee;


-- Database SQL Queries Question and Answer on "SQL Order By"

-- 15. GEt all Employee details from the Employee table Order By First_Name Ascending

select *  from Employee
order by FIRST_NAME asc;

-- 16. GEt all Employee details from the Employee table Order By First_Name Desending

select *  from Employee
order by FIRST_NAME desc;

-- 17. Get all Employee detais from the Employee table Order_by First_Name Ascending and Salary  Desending

select FIRST_NAME , SALARY from Employee
order by FIRST_NAME asc, SALARY desc;

-- SQL  Question and Answer on SQL WHere Condition 

-- 18. Get Employee details from Employee table  whose Employee name is "Dinesh"

select * from Employee where FIRST_NAME='Dinesh';

-- 19. Get Employee details from Employee name are "Dinesh" and "Roy"

select * from Employee where FIRST_NAME='Dinesh' or FIRST_NAME='Roy';

-- 20. Get Employee details from Employee name are not "Dinesh" and "Roy"

select * from Employee where FIRST_NAME <> 'Dinesh' and FIRST_NAME<>'Roy';

-- Queries Questions and Answer on SQL Wild Card Search

-- 21. Get Employee Details From Employee Tables  Whose First name Starts with 'S'

select * from Employee where FIRST_NAME like 's%';

-- 22. Get Employee deatils from  Employee Table Whose First name Contains 'V'

select * from Employee where FIRST_NAME like '%v%';

-- 23. Get EMployee details from  Employee table whose First name ends with 'n'

select * from Employee where FIRST_NAME like '%n';

-- SQL Queris Question and Answer on "SQL PAttern MAtching"

-- 24. Get Employee details from Employee table Whose First_name ends with 'n' and name contains 4 letters

select * from Employee where FIRST_NAME like '___%n' ;

-- 25. Get Employee details from Employee table Whose First_name ends with 'J' and name contains 4 letters

select * from Employee where FIRST_NAME like 'J___%' ;

-- 26. Get Employee Details from Employee tables who's Salary Greater than 60000

select * from Employee where salary<60000;

-- 27. Get Employee Details from Employee tables who's Salary Greater than 60000

select * from Employee where salary<80000;

-- 28. Get Employee Details from Employee tables who's Salary between 500000 and 800000

select * from Employee where salary>50000 and salary<800000;

-- 29. Get Employee Details from Employee tables whose name is Venkatesh and Ragavi

select *  from Employee where FIRST_NAME='Venkatesh' or FIRST_NAME='Ragavi';

-- 39. Get Names from Employee table who has '%' in Last_Name. TIPS: Escape Characters for Special Characters in a Queue

select * from Employee where FIRST_NAME like '%!%%' escape '!';

-- 40. Get Last Name from Employee tables after replacing Special Character with White Space

select replace(LAST_NAME ,' ','$') from Employee where LAST_NAME like ' ';

-- SQL Queries Question and ANswer on 'SQL Group By Function' Examples

-- 41. Get department, total salary with respect to a department from employee table.

select DEPARTMENT, sum(SALARY)  from Employee group by DEPARTMENT;

-- 42. Get department, total salary with respect to a department from employce table order by total salary descending

select DEPARTMENT, sum(SALARY)  from Employee group by DEPARTMENT order by sum(SALARY) desc;

-- SOL Queries Interview Questions and Answers on "SOL Mathematical Operations using Group By" - Examples

-- 43. Get department,no of employees in a department, total salary with respect to a department from employee table order salary descending

select DEPARTMENT, count(*) , sum(SALARY) from Employee group by DEPARTMENT order by sum(SALARY) desc;

-- 44. Get department wise average salary from employee table order by salary ascending

select DEPARTMENT, avg(SALARY) from Employee group by DEPARTMENT order by avg(SALARY) asc;

-- 45. Get department wise maximum salary from employee table order by salary ascending

select DEPARTMENT, max(SALARY) from Employee group by DEPARTMENT order by max(SALARY) asc;

-- 46. Get department wise minimum salary from employee table order by salary ascending

select DEPARTMENT, min(SALARY) from Employee group by DEPARTMENT order by min(SALARY) asc;

-- 47. Select no of employees joined with respect to year and month from employee table

select year(str_to_date(JOINING_DATE, '%m/%d/%Y')) JOIN_YEAR,
month(str_to_date(JOINING_DATE, '%m/%d/%Y')) JOIN_MONTH, 
count(*) from employee group by JOIN_YEAR , JOIN_MONTH order by JOIN_YEAR, JOIN_MONTH;

-- 48. Select department, total salary with respect to a department from employee table where total salary greater than 800000 Total_Salary descending

select DEPARTMENT, sum(SALARY) from Employee group by DEPARTMENT having sum(SALARY) > 800000 order by sum(SALARY) desc;

-- SOL Queries Interview Questions and Answers on "SQL Joins" - Examples
-- 49. Select first_name, incentive amount from employee and incentives table for those employees who have incentives

select E.FIRST_NAME, I.INCENTIVE_AMOUNT
from EMPLOYEE E
inner join INCENTIVES I on E.EMPLOYEE_ID = I.EMP_REF_ID;

-- 50. Select first_name, incentive amount from employee and incentives table for those employees who have incentives and incentiv greater than 3000

select E.FIRST_NAME, I.INCENTIVE_AMOUNT
from EMPLOYEE E
inner join INCENTIVES I on E.EMPLOYEE_ID = I.EMP_REF_ID 
WHERE I.INCENTIVE_AMOUNT > 3000;

-- 51. Select first_name, incentive amount from employee and incentives table for all employes even if they didn't get incentives

select E.FIRST_NAME, I.INCENTIVE_AMOUNT
from EMPLOYEE E
left join INCENTIVES I on E.EMPLOYEE_ID = I.EMP_REF_ID ;

-- 52. Select first_name, incentive amount from employee and incentives table for all employees even if they didn't get incentiv incentive amount as O for those employees who didn't get incentives.
select E.FIRST_NAME, IFNULL(I.INCENTIVE_AMOUNT, 0)
from EMPLOYEE E
left join INCENTIVES I ON E.EMPLOYEE_ID = I.EMP_REF_ID;

-- 53. Select first_name, incentive amount from employee and incentives table for all employees who got incentives using left join.

SELECT employee.first_name, incentives.incentive_amount
FROM employee
LEFT JOIN incentives ON employee.id = incentives.employee_id
WHERE incentives.incentive_amount IS NOT NULL;

-- 54. Select max incentive with respect to employee from employee and incentives table using subquery.

SELECT employee_id, incentive_amount
FROM incentives WHERE incentive_amount = (
SELECT MAX(incentive_amount) FROM incentives
);

-- 55. Select TOP 2 salary from employee table

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 2;

-- 56. Select TOP N salary from employee table
SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 5;

-- 57. Select 2nd Highest salary from employee table

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 1;

-- 58. Select Nth Highest salary from employee table

SELECT DISTINCT salary
FROM employee
ORDER BY salary DESC
LIMIT 1 OFFSET 3;




