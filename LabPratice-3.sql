create database labDB;

use labDB;






create table Quotation
(
	Person varchar(20),
	Quatation varchar(160),
	Year integer,
);

/* Create a table named “Quotation” and entered the quotation in encrypted form in the table */

insert into Quotation
(Person, Quatation, Year)
values
('Paulo Coelho',hashbytes('sha1','"When Someone leaves ,its because someone else is 
about to arrive"'), 1993),
('Mitch Albom',hashbytes('sha1','"All endings are also beginnings. We just dont know it at 
the time"'),1998),
('J.K.Rowling',hashbytes('sha1','"It is our choices that show what we truely are, far more 
than our abilities."'),1987),
('Paulo Coelho',hashbytes('sha1','"Be brave and take risk. Nothing can substitute 
experience."'),1980),
('Veronica',hashbytes('sha1','"Fear dosent shut you down; it wakes you up."'),1983),
('Lavana',hashbytes('sha1','"Fear does not put you down; it wakes you up down."'),1986);

select * from Quotation;
                                                                                         

/* Find which quotation is given by Paulo Coelho before 1990 . */

select Person, Quatation, Year from Quotation where Person = 'Paulo Coelho' and Year < 1990;



/* Find the name of those customers whose DeptID is above 400 and those who joins the 
company before 2 year ago.(No joining operation and subquery is used here) */

create table Employee
(
	JobID integer,
	Name varchar(20),
	DeptID integer,
);

insert into Employee
(JobID, Name, DeptID)
values
(2340, 'Jackson', 333),
(6002, 'Sara', 444),
(7845, 'Maria', 333),
(8547, 'Ronald', 999),
(1245, 'Kafi', 444);


select * from Employee;


create table InfoEmp
(
	ID integer,
	Name varchar(20),
	Position varchar(20),
	Join_Date varchar(20),
);


insert into InfoEmp
(ID, Name, Position, Join_Date)
values
(3145, 'Ronald', 'CEO', '2017-02-12'),
(7845, 'Maria', 'PO', '2018-08-11'),
(1245, 'Kafi', 'AE', '2018-06-15'),
(3256, 'Jenelia', 'ME', '2019-01-31'),
(8547, 'Mehta', 'PO', '2018-12-25');

select * from InfoEmp;

/* select Name from Employee where DeptID > 400 (select Name from InfoEmp where Join_Date < '2020-06-21'); */

select Employee.Name from Employee inner join InfoEmp on Employee.Name = InfoEmp.Name where Employee.DeptID > 400 and GETDATE() -730 > Join_Date;


/* Update the position of those customers is to SuperBoss who works as PO and joins before 
2 year ago in the company. */


update InfoEmp

set Position = 'SuperBoss'

where Position ='PO' and Join_Date < '2020-06-21';

select * from InfoEmp;







































