create database company;
use company;
create table employee(
e_id int not null auto_increment primary key,
name varchar (50),
Location varchar(50)
);
create table manager(
m_id int not null auto_increment primary key,
name varchar (50),
Location varchar(50),
e_id int,
foreign key (e_id) references employee (e_id)
);
drop table manager;
alter table manager add foreign key (e_id) references employee (e_id);
alter table employee auto_increment = 1001;
alter table manager auto_increment = 2001;
insert into employee (name , Location) values ("Jack" , "Germany"), 
("Joe", "Italy"),
 ("Christian" ,  "New York"), ("John" , "Berlin"), ("Don" , "Chicago"); 
 insert into manager (name , Location) values ("John" , "Pakistan"), 
("David", "China"),
 ("Micheal" ,  "America"), ("Paul" , "Berlin"), ("Jack" , "Germany"); 
 SELECT * FROM employee UNION SELECT * FROM manager;
 SELECT name, Location FROM employee where name = "Jack" UNION all SELECT name, Location FROM manager where name = "Jack";
 SELECT * FROM employee UNION all SELECT * FROM manager;
 truncate table manager;
 SELECT name FROM employee INTERSECT SELECT name FROM manager;
 SELECT name FROM employee except SELECT name FROM manager;
select * from employee;
select * from manager;
alter table manager  drop foreign key manager_ibfk_1;
select name , location from employee intersect select name , location from manager;
select name , location from employee where name = "Jack" union all select name , location from manager where name = "Jack";

select name , location from employee where name = "Jack" intersect select name , location from manager where name = "Jack";

select name , location from employee intersect select name , location from manager;

select name , location from employee except select name , location from manager;

select name from employee where location = (select m_id from manager where location = "Germany");