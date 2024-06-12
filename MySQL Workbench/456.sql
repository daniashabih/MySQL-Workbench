create table emp
(
emp_id int primary key,
emp_name varchar(50),
emp_salary int,
emp_city varchar(30)
);



insert into emp (emp_id, emp_name, emp_salary, emp_city) values (1, 'Asad', '5000', 'Karachi');
insert into emp (emp_id, emp_name, emp_salary, emp_city) values (2, 'Umar', '6000', 'Lahore');
insert into emp (emp_id, emp_name, emp_salary, emp_city) values (3, 'Asim', '8000', 'Islamabad');
insert into emp (emp_id, emp_name, emp_salary, emp_city) values (4, 'Saad', '6000', 'Karachi');
select * from emp;

select emp_city, SUM(emp_salary) from emp group by emp_city having SUM(emp_salary) > 7000;

select emp_city, SUM(emp_salary) from emp group by emp_city;



create table customer
(
id int,
firstName  varchar(30),
lastName varchar(30),
email varchar(30),
city varchar(30),
phone varchar(30)
);

insert into customer values(1,'ali', 'fasih shah', 'ahmed@yahoo.com', 'karachi', '626-222'),
(2,'tahir', 'faheem commandu', 'tahir@gmail.com', 'karachi', '323-455'),
(3,'faisal', 'ahad khan', 'faisal@hotmail.com', 'lahore', '416-323'),
(4,'rafay', 'imran khan', 'rafay@live.com', 'hydrabad', '416-323'),
(5,'ali', 'tahir shah', 'ahmed@yahoo.com', 'islamabad', '626-222'),
(6,'yasir', 'munim khan', 'tahir@gmail.com', 'karachi', '323-455'),
(7,'faisal', 'ahad', 'faisal@hotmail.com', '2014-02-19', '416-323'),
(8,'rafay', 'imran', 'rafay@live.com', 'lahore', '416-323'),
(9,'syed', 'mudassir ali', 'ahmed@yahoo.com', 'hydrabad', '626-222'),
(10,'syed', 'ahmed ali', 'tahir@gmail.com', 'lahore', '323-455'),
(11,'syed', 'furqan ali', 'faisal@hotmail.com', 'karachi', '416-323'),
(12,'rafay', 'imran', 'rafay@live.com', 'karachi', '416-323');

alter table customer
add gender varchar(40);
update customer set gender ='female' where id in (1,3,4,8,12);
update customer set gender ='male' where id in (2,5,6,9,11);
select *from customer;

select emp_city, SUM(emp_salary) from emp group by emp_city;

select customer.city, COUNT(customer.id)  as "Count of id" from customer group by customer.city;

select  customer.gender , customer.city , COUNT(customer.id) as "count of gender " from customer group by  customer.gender , customer.city;
select * from customer;

select emp_city, SUM(emp_salary) from emp group by emp_city having SUM(emp_salary) > 9000;