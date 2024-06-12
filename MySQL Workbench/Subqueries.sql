create database office;
use office;
create table department(
d_id int not null  auto_increment primary key,
d_name varchar (50),
d_head varchar (50),
d_location varchar (50),
d_ranking int
);
create table employee(
e_id int not null  auto_increment primary key,
e_name varchar (50),
e_position varchar (50),
e_salary int,
d_id int,
foreign key (d_id) references department (d_id)
);
insert into department(d_id, d_name, d_head, d_location, d_ranking) values 
(3001, "finance", "james", "washington", 1),
(3002, "sales", "mary", "california", 2),
(3003, "legal", "john", "texas", 3),
(3004, "accounting", "drew", "alaska", 4),
(3005, "marketing", "kolin", "ohio", 5),
(3006, "HR", "hellen", "california", 6);

insert into employee(e_id, e_name, e_position, e_salary , d_id) values 
(1001, "pete", "clerk", 10000, 3001),
(1002, "david", "manager", 25000, 3002),
(1003, "michael", "salesman", 8000, 3003),
(1004, "ruby", "clerk", 15000, 3004),
(1005, "clinton", "salesman", 10000, 3005),
(1007, "julie", "manager", 40000, 3006);

create table e_california(
e_id int primary key,
e_name varchar(50),
e_position varchar(50),
e_salary int
);
drop table e_california;
truncate table employee;
insert into e_california (select e_id, e_name, e_position, e_salary from employee where d_id = (select d_id from department where d_name = "HR"));
select e_id, e_name, e_position, e_salary from employee where d_id = (select d_id from department where d_name = "sales");
select * from employee;

select * from e_california;

update employee set e_salary = e_salary + e_salary * 0.1 where d_id = (select d_id from department where d_ranking = 1);

delete from employee where d_id = (select d_id from department where d_name = "finance");

select avg(e_salary) as avgsal from employee;

select * from (select avg(e_salary) as avgsal from employee) as a, employee as e where e.e_salary > a.avgsal;

select * from employee where d_id in (select d_id from department where d_ranking = 1 or d_ranking = 2 or d_ranking = 3);

select * from employee where d_id not in (select d_id from department where d_location = "texas" or d_location = "california");

select * from department d where exists (select * from employee e where e.d_id = d.d_id);

select * from department d where not exists (select * from employee e where e.d_id = d.d_id);

