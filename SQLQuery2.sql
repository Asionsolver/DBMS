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

insert into employee_info
(Emp_Id,Emp_Name,Department,Salary)
values
(14, 'Argun', 'DMD', 10000),
(15, 'Nisita', 'AID', 20000),
(16, 'Ovoy', 'AD', 50000),
(17, 'Anuz', 'AD', 40000),
(18, 'Amrita', 'Ml', 50000),
(19, 'Lokes', 'SMD', 60000);

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

/* Write a SQL Query to display all department name along with no.of Emps Working in that */

select Department, COUNT(*) as Total_Emp 
from employee_info 
group by Department;

/* Write a SQL Query to display all the department where no. of employees are less than 2 */

select Department 
from employee_info 
group by Department 
having COUNT(*) < 2;

select Department 
from employee_info 
group by Department 
having COUNT(*) > 3;

/* Write a SQL Query to display all the department where no. of employees and employee name are less than 2 */

select Emp_Name, Department 
from employee_info 
where Department 
in (select Department from employee_info group by Department having COUNT(*) < 2);

select Emp_Name, Department 
from employee_info 
where Department 
in (select Department from employee_info group by Department having COUNT(*) > 3);

/* Write a query to display highest salary department wish and name of employee who is taking that salary */

select Emp_Name,Department,Salary from employee_info where Salary In (select MAX(Salary) from employee_info group by Department);


create table employee
(
	Emp_Id integer,
	Emp_Name varchar(20),
	Addresses varchar(20)
);

insert into employee
(Emp_Id,Emp_Name,Addresses)
values
(1, 'Ram', 'Pune'),
(2, 'Sita', 'Delhi'),
(3, 'Lokes', 'Mumbai'),
(4, 'Krisno', 'Bangalor'),
(5, 'Varun', 'Chandigar'),
(6, 'Robin', 'Chandigar'),
(7, 'Ammy', 'Pune');

create table Project
(
	Emp_Id integer,
	P_id integer,
	P_Name varchar(20),
	Location varchar(20)
);

insert into Project
(Emp_Id,P_id,P_Name,Location)
values
(1,1, 'IOT', 'Pune'),
(2,5, 'Big Data', 'Delhi'),
(3,8 ,'CP', 'Mumbai'),
(4,3, 'DL', 'Bangalor'),
(5,7, 'AI', 'Chandigar'),
(6,9, 'DA', 'Chandigar'),
(7,2 ,'WD', 'Pune');

/* Find Details Employee Address is either Delhi or Chandigar or Pune */

select * from employee where Addresses in ('Pune','Chandigar','Delhi');







