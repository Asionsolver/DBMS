create database labDB;

use labDB;

/* Create a table named “Customer”, ”loan”, ”Student”. Insert the values into the table using queries. */

create table Customer
(
	Customer_Name varchar(20),
	Customer_city varchar(20),
	Customer_Country varchar(10),
);

insert into Customer
(Customer_Name,Customer_city,Customer_Country)
values
('Galvin','Athens', 'Greece'),
('Smith','Easter Island', 'Chile'),
('Jony','Athens', 'USA'),
('Ronald','Baltimore', 'USA');

select * from Customer;

create table loan
(
	Customer_Name varchar(20),
	Loan_number varchar(20),
	Amount integer
);

insert into Loan
(Customer_Name,Loan_number,Amount)
values
('Jony','L-174', 25000),
('Michel','P-857',32000),
('Ronald','K-658',12580),
('Rakesh','J-582',NULL);

select * from Loan;

create table Student
(
	Student_name varchar(20),
	CGPA float,
	Session varchar(10)
);

insert into Student
(Student_name,CGPA,Session)
values
('Sara',3.86,'Summer15'),
('Rakesh',3.24,'Summer16'),
('Wadud',3.69,'Spring14'),
('Simran',3.55,'Fall13');

select * from Student;


/* Now add a new column named Times in the customer table and insert values on this column. */

alter table Customer add Times varchar(10) NULL;

update Customer set Times = 'GMT-4' where Customer_Name = 'Galvin';
update Customer set Times = 'GMT-6' where Customer_Name = 'Smith';
update Customer set Times = 'GMT-7' where Customer_Name = 'Jony';
update Customer set Times = 'GMT-7' where Customer_Name = 'Ronald';

/* Alphabetically show the names of customer where each customer lives in USA. */

select Customer_Name,Customer_Country FROM customer ORDER BY Customer_Country DESC;


/* Show the customer name who have greater assets than the average assets and also lives in USA. */


/* Display the number of rows in customer table. */

SELECT COUNT(*) as Number_of_Rows
FROM customer;

/* Display the number of NULL values in customer table. */























