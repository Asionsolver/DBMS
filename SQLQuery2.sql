create database mixinDB;


use mixinDB;

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
(3, 'Krisno', 'SM', 50000),
(4, 'Ram', 'HR', 40000),
(5, 'Amrit', 'SM', 50000),
(6, 'Ravi', 'IT', 60000),
(7, 'Nitin', 'MRKT', 50000),
(8, 'Varun', 'MRKT', 80000),
(9, 'Ashis', 'HR', 30000),
(10, 'Asis', 'IT', 200000),
(11, 'Asion', 'MRKT', 210000),
(12, 'Kumar', 'SM', 150000),
(13, 'vhubi', 'IT', 90000);

select * from employee_info;


/* Write a SQL Query to display maximum salary from employee_info Table */

select MAX(Salary) from employee_info;


/* Write a SQL Query to display Employe Name who taking maximum salary */

select Emp_Name 
from employee_info 
where salary = ( select Max(salary) from employee_info);


/* Write a SQL Query to display Second Highest salary from employee_info Table */

select Max(Salary) from employee_info 
where Salary != (select Max(Salary) from employee_info);

/* Write a SQL Query to display Employe Name who takingSecond Highest salary */
select Emp_Name  from employee_info
where Salary = (select Max(Salary) from employee_info 
where Salary != (select Max(Salary) from employee_info));






















