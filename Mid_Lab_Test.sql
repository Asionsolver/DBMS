create database labDB;

use labDB;

create table Teacher
(
    TID varchar(20),
	FirstName varchar(20),
	LastName varchar(20),
	Dept varchar(10),
	Age int,
	Salaray int
);

insert into Teacher 
(TID,FirstName,LastName,Dept,Age,Salaray)
values
('T-02480','Mizanur','Rahman','CSE',28,35000),
('T-02454','Meraj','Ali','CSE',26,33000),
('T-02466','Shafiul','Islam','EEE',24,30000),
('T-02459','Fatin','Islam','EEE',25,32000);


select * from Teacher;

create table Dept
(
	deptID int,
    deptName varchar(20),
	location varchar(20)
);

insert into Dept 
(deptID,deptName,location)
values
(1,'CSE','Talaimari'),
(2,'EEE','Talaimari'),
(3,'English','Kazla'),
(4,'BBA','Vodra');

select * from Dept;


/* 1. Update the Salary of Teacher by 15% whose DeptName is ‘CSE, otherwise update by 10% Salary. */

update Teacher set Salaray = CASE Dept 
							 when 'CSE' then Salaray + (Salaray*.15) 
							 else  Salaray + (Salaray*.10)
							 end;

/* 2. Find firstname, lastname, Dept where location name is kazla using subquery.*/


select FirstName, LastName, Dept from Teacher
where Dept = (select deptName from Dept where location = 'kazla');

/* 3. Write an SQL query to determine the 3rd highest salary from Teacher table.*/ 
 select max(Salaray) as Salary from Teacher where Salaray < (select max(Salaray)  from Teacher where Salaray < (select max(Salaray)  from Teacher));

 /* 4. Write SQL query to find those department whose DeptID is odd */
 select deptName from Dept where deptID % 2 = 1;


 /* Suppose you are given a gmail address ‘john.smith@gmail.com’
Now find the string ‘john’ from the given address.  */

select substring('jhon.smith@gmail.com',charindex('j','jhon'),charindex('n','jhon'));