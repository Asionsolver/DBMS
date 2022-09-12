create database FinalDb;

use FinalDB;

create table Orders(
ord_no int,
purch_amt float,
ord_date date,
customer_id int,
salesman_id int
);


insert into Orders
(ord_no, purch_amt, ord_date, customer_id, salesman_id)
values
(70001, 150.5,'2012-10-05',3005,5002),
(70009, 270.65,'2012-09-10',3001,5005),
(70002, 65.26,'2012-10-05',3002,5001),
(70004, 110.5,'2012-08-17',3009,5003),
(70007, 948.5,'2012-09-10',3005,5002),
(70005, 2400,'2012-07-27',3007,5001),
(70008, 5760,'2012-09-10',3002,5001),
(70010, 1983.43,'2012-10-10',3004,5006),
(70003, 2480.4,'2012-10-10',3009,5003),
(70012, 250.45,'2012-06-27',3008,5002),
(70011, 75.29,'2012-08-17',3003,5007),
(70013, 3045.6,'2012-04-25',3002,5001);

select * from Orders;

create table Salesman(
salesman_id int,
name varchar(15),
city varchar(20),
commission float
);

insert into Salesman
(salesman_id, name, city, commission)
values
(5001, 'James Hoog','New York', 0.15),
(5002, 'Nail Knite','Paris', 0.13),
(5005, 'Pit Alex','London', 0.11),
(5006, 'Mc Lyon','Paris', 0.14),
(5007, 'Paul Adam','Rome', 0.13),
(5003, 'Lauson Hen','San Jose', 0.12);

select * from Salesman;


/* 1. Write a SQL statement to display name and commission for all the salesmen. */

select name, commission from Salesman;

/* 2. Write a SQL statement to display names and city of salesman, who belongs to 
the city of Paris. */


select name, city from Salesman where city = 'Paris';


/* 3. Write a SQL statement to display salesman_id, name, city and commission who 
gets the commission within the range more than 0.10% and less than 0.12%. */

select salesman_id, name, city, commission from Salesman where commission between 0.0010 and 0.0012;


/* 4. Write a SQL statement to find those salesmen with all other information and 
name started with any letter within 'A' and 'K'. */


select * from  Salesman where name like 'A%k';


/* 5. Write a SQL statement to find the average purchase amount of all orders. */

select avg(purch_amt) as Average_Amount from Orders;

/* 7. Write a SQL statement to get the maximum and minimum purchase amount of all 
the orders. */

select max(purch_amt) as Max_Amount , min(purch_amt) as Min_Amount from Orders;

/* 8. Write a query to display the orders according to the order number arranged 
by ascending order. */

select * from Orders order by (ord_no);

/* 9. Write a query to find those customers with their name and those salesmen 
with their name and city who lives in the same city.*/





















