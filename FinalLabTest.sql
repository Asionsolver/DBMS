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

