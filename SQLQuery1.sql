create database employeeDB;

use employeeDB;

create table course
(
	Course_Id int,
	Course_Name varchar(20),
	Course_Teacher_Name varchar(15),
	Course_Fee int
);


/* Single Row Insert */
insert into course
(Course_Id, Course_Name, Course_Teacher_Name, Course_Fee)
values
(711, 'Database Management', 'Ashis Kumar Pal', 650000);

/* Multiple row insert */
insert into course
(Course_Id, Course_Name, Course_Teacher_Name, Course_Fee)
values
(211, 'Data Analysis', 'Ashis Kumar Pal', 450000),
(311, 'Deep Learning', 'Ashis Kumar Pal', 950000),
(411, 'Web Development', 'Ashis Kumar Pal', 350000),
(511, 'Game Development', 'Pius Kumar Pal', 550000);


/* If we want to capture inserted values from multiple columns, we are required to specify the columns in the output as follows: */

insert into course (Course_Id, Course_Name, Course_Teacher_Name, Course_Fee)
output inserted.Course_Id,
inserted.Course_Name,
inserted.Course_Teacher_Name,
inserted.Course_Fee
values (611, 'Digital Marketing', 'Niloy Kumar Pal', 300000);


/* Update Single Column */

update course
set Course_Teacher_Name = 'Noyon Islam', Course_Fee = 600000
where Course_Id = 211;


/* Update Multiple Column */

update course
set Course_Teacher_Name = 'Sakil Aahamed', Course_Fee = 600000
where Course_Id = 711;

update course
set Course_Teacher_Name = 'Noyon Islam', Course_Fee = 600000 + 1000
where Course_Id = 211;

/* DELETE Data */

delete from [employeeDB].[dbo].[course]
where Course_Id = 311;

delete from [employeeDB].[dbo].[course]
where Course_Id = 511;


/* Delete top 2 rows from the table "Course" where Course_Fee is less than or equal to 350000. */

delete top(2)
from [employeeDB].[dbo].[course]
where Course_Fee <= 350000;

/* If we want to add more than one column, we can use the */

alter table course add Phone_Number int;


/* We can also use the ALTER command to remove single or multiple columns from the table. SQL Server provides
 the ALTER TABLE DROP COLUMN statement to delete the existing column from the table. To do this,
 If we want to delete more than one column, we can use the  */

alter table course drop column Phone_Number;


/* Add Constraint on the Column
We can also use the ALTER command to add or remove the constraints into the specified table. SQL Server provides the ALTER TABLE ADD CONSTRAINT statement for adding a constraint to the specified column. The following syntax illustrates this alteration:

ALTER TABLE table_name  
ADD CONSTRAINT [constraint_name] PRIMARY KEY ([column_name])  
In this syntax, we will first specify the table name in which we want to make the modification. Next, we will specify the constraint name after the ADD keyword. Next, specify the constraint type such as PRIMARY KEY, FOREIGN KEY, UNIQUE, NOT NULL, CHECK, and DEFAULT, and finally define the column name.

Example

Suppose we want to add a PRIMARY KEY constraint on the Id column into the Student table. We can do this by using the below statement:

ALTER TABLE Student ADD CONSTRAINT PrimaryKey PRIMARY KEY (Id);   */


/* Drop Constraint on the Column
SQL Server provides the ALTER TABLE DROP CONSTRAINT statement for removing constraints from the specified column. The following syntax illustrates this alteration:

ALTER TABLE table_name DROP CONSTRAINT [constraint_name]  
In this syntax, we will first specify the table name in which we want to make the modification. Next, we will specify the constraint name after the DROP CONSTRAINT keyword.

Example

Suppose we want to drop the above-created constraint on the Id column from the Student table. We can do this by using the below statement:

ALTER TABLE Student DROP CONSTRAINT PrimaryKey; */


/*  */


/* Show Table */

select * from course;

/* SQL Queries and Subqueries (part-1)  */

create table employee_info
(
	Emp_Id integer,
	Emp_Name varchar(20),
	Department varchar(30),
	Salary integer
);

insert into employee_info
(Emp_Id,Emp_Name,Department,Salary)
values
(1, 'Ram', 'HR', 10000),
(2, 'Sita', 'IT', 20000),
(3, 'Krisno', 'SM', 30000),
(4, 'Prolhad', 'HR', 40000),
(5, 'Prolhad', 'SM', 50000),
(6, 'Prolhad', 'IT', 60000),
(7, 'Prolhad', 'MRKT', 70000),
(8, 'Prolhad', 'MRKT', 80000),
(9, 'Prolhad', 'HR', 90000),
(10, 'Prolhad', 'IT', 100000),
(11, 'Prolhad', 'MRKT', 110000),
(12, 'Prolhad', 'SM', 120000),
(13, 'Prolhad', 'IT', 130000);


/* Add new column like Working_Hour */

alter table employee_info add Working_Hour int;

/* Value Update Working_Hour Column */

update employee_info
set Working_Hour = 6
where Emp_Id = 1;


update employee_info
set Working_Hour = 9
where Emp_Id = 2;

update employee_info
set Working_Hour = 3
where Emp_Id = 3;

update employee_info
set Working_Hour = 8
where Emp_Id = 4;

update employee_info
set Working_Hour = 9
where Emp_Id = 5;

update employee_info
set Working_Hour = 8
where Emp_Id = 6;

update employee_info
set Working_Hour = 9
where Emp_Id = 7;

update employee_info
set Working_Hour = 4
where Emp_Id = 8;

update employee_info
set Working_Hour = 6
where Emp_Id = 9;

update employee_info
set Working_Hour = 5
where Emp_Id = 10;

update employee_info
set Working_Hour = 6
where Emp_Id = 11;

update employee_info
set Working_Hour = 7
where Emp_Id = 12;

update employee_info
set Working_Hour = 8
where Emp_Id = 13;



update employee_info
set Emp_Name = 'Noyon'
where Emp_Id = 5;

update employee_info
set Emp_Name = 'Prithigit'
where Emp_Id = 6;

update employee_info
set Emp_Name = 'Pritom'
where Emp_Id = 7;

update employee_info
set Emp_Name = 'Akas'
where Emp_Id = 8;

update employee_info
set Emp_Name = 'Bikas'
where Emp_Id = 9;

update employee_info
set Emp_Name = 'Ravi'
where Emp_Id = 10;

update employee_info 
set Emp_Name = 'Varun'
where Emp_Id = 11;

update employee_info
set Emp_Name = 'Noyon'
where Emp_Id = 12;

update employee_info
set Emp_Name = 'Amrit'
where Emp_Id = 13;

update employee_info
set Salary = Salary + 1000;

select * from employee_info;

/*  */
select Emp_id, Department from employee_info;

/* used to sort/arrange records in either ascending or descending order. This clause always used with SELECT statement */

select Emp_Name from employee_info order by Emp_Name desc;

select * from employee_info order by Salary desc;

/* The SUM() function in SQL Server is a type of aggregate function. We use this function to calculate the total summed value 
in a set of values of a specified column or expression. */

select sum(Salary) from employee_info;

SELECT SUM(salary) AS "Total Salary" FROM employee_info;  

/* SUM Function with DISTINCT Clause
The DISTINCT keyword calculates only the unique data of the table. Suppose we want to calculate the sum of unique records present 
in the salary column of an employee_info table. We can write the query to do the same as below: */




/* Basic Example of AVERAGE Function. We use this function to calculate the average value of an expression.

Syntax
The following syntax illustrate the AVG() function in SQL Server:

SELECT AVG(ALL | DISTINCT expression)    
FROM table_name(s)    
[WHERE conditions];   */

SELECT AVG(Working_Hour) AS "Average_Working_Hours"   
FROM employee_info;  

SELECT AVG(Salary) AS "Average_Salary"   
FROM employee_info; 


/* AVERAGE Function with WHERE Clause
SQL Server uses the WHERE clause to filter the records of a table. This example will use the WHERE clause with
 the AVG() function to get the average working hours of employees whose Emp_Name is a writer. */


SELECT AVG(Salary) AS "Salary"   
FROM employee_info
WHERE Emp_Name = 'Pritom'; 

/* AVERAGE Function with GROUP BY Clause */

SELECT Emp_Name, AVG(working_hour) AS "Average Working Hours",AVG(Salary) as "Salary"   
FROM employee_info  
GROUP BY Emp_Name;



/* SQL Server MAX() Function */

select max(Salary) AS "Maximum_Salary" 
FROM employee_info; 


SELECT min(Salary) AS "Minimum_Salary"   
FROM employee_info; 

SELECT count(Emp_Name) AS "Total_Employee"   
FROM employee_info; 






/* 15. NUMERIC FUNCTION in SQL Server */


Select ABS(-22);  

Select ACOS (0);
 
Select ATAN(0);
   
Select ASIN(0);
  
/* The Arc tangent value in all the four quadrants comes as the output for the specified expression.

Example:

The below query gives the arc tangent value in the four quadrants of 0. */

Select ATN2 (0, -1)   

/*If the value exists between the two expressions, then the below output will come.

SELECT salary from EMPLOYEES   
Where salary is between 20000 and 85000.
*/

Select MIN(salary)from EMPLOYEES;
  
Select MAX (salary) from EMPLOYEES;

Select SQRT(4);   

Select SQUARE(4);   

Select CEILING (234.25);   

Select FLOOR (231.34);   

Select LOG(1);  

Select EXP(1);   

/* STRING FUNCTION in SQL Server */

Select LEN('JAVA');   

select Emp_Name, LEN(Emp_Name) from employee_info;

Select UPPER('SqlServer')  

select Emp_Name, UPPER(Emp_Name) from employee_info;

Select LOWER('SQL') 

select Emp_Name, LOWER(Emp_Name) from employee_info;

Select LTRIM('   TUTORIAL') 

Select RTRIM('ASIA   ') 

Select SUBSTRING ('CONFORM', 1,3)   
Select SUBSTRING ('INDIA', 3,3)   
Select SUBSTRING ('QUEEN', 4,3)  








/* SQL Server LIKE Condition (Operator) */

/* % --> It is used to match any string of any length (including zero length). */

select*from employee_info Where Emp_Name like 'a%';

select*from employee_info Where Emp_Name like 'a%s';

select*from employee_info Where Emp_Name like 'a%as';

select*from employee_info Where Emp_Name like '%as';

select * from employee_info where Emp_Name like '%y%';

select * from employee_info where Emp_Name like '%s%';

select * from employee_info where Emp_Name like '%ri%';


/* [ ]	It is used to match on any character in the [ ] brackets (for example, [abc] would match on a, b, or c characters) */

/* */

/* */

/* */

/* */

/* */

/* */

/* */












/*  */





/*  */





/*  */


