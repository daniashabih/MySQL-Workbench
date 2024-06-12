create database aptech;
-- drop database aptech; 
use aptech;
create table faculty(
f_id int not null auto_increment primary key,
f_name varchar(20),
email varchar(255) unique,
phone_no bigint
);
create table student(
s_id int not null auto_increment primary key,
s_name varchar(20),
s_email varchar(255) unique,
s_phone_no bigint
);
create table admin(
a_id int not null auto_increment primary key,
a_name varchar(20),
a_email varchar(255) unique,
a_phone_no bigint
);
alter table admin auto_increment = 101;
insert into admin (a_name, a_email, a_phone_no) values ("Ikhlaas", "ikhlas@gmail.com" , 0300422345), 
("Ali", "ali@gmail.com" , 0300482345),
 ("Zafar", "Zafar@gmail.com" , 0300426345); 

create table batch(s_id int, batch_code char(25));

-- create table batch(s_id int, batch_code char(25));

insert into faculty (f_name, email, phone_no) values ("Ikhlaas", "ikhlas@gmail.com" , 0300422345), 
("Ali", "ali@gmail.com" , 0300482345),
 ("Zafar", "Zafar@gmail.com" , 0300426345); 
-- drop table student;
-- truncate table faculty;
insert into student (s_name, s_email, s_phone_no) values ("Ikhlaas", "ikhlas@gmail.com" , 0300422345), 
("Ali", "ali@gmail.com" , 0300482345),
 ("Zafar", "Zafar@gmail.com" , 0300426345); 
--  alter table student auto_increment = 101;
--  alter table batch add foreign key (s_id) references student (s_id);
--  alter table batch add column f_name varchar(25);
--  alter table batch modify batch_code varchar(26);
--  alter table faculty change f_name fac_name varchar(20);
--  alter table student drop s_email;
--  alter table faculty modify phone_no bigint after fac_name;
--  alter table batch  drop foreign key batch_ibfk_1;
--  rename table faculty to fac;

alter table batch add foreign key (s_id) references student (s_id);
 alter table batch add column course_name varchar(25);
 alter table batch modify batch_code varchar(25);
 alter table batch change batch_code b_code varchar(25);
 alter table batch drop b_code;
 alter table admin modify a_phone_no bigint after a_name;
 alter table batch drop foreign key batch_ibfk_1;
 alter table student  drop s_phone_no;
 rename table admin to admin_2;
 select * from fac;
select fac_name, phone_no from fac;
update fac set phone_no = 0300429876 where f_id = 1;
delete from fac where f_id = 3;
update fac set email = null where f_id = 2;
select * from personal;
select * from personal where age in (18, 19);
select * from personal where age not in (18, 19);
select * from personal where age between 19 and 25;
 select * from personal where age not between 19 and 25;
 select * from personal where name like "a%";
 select * from personal where name like "%a";
 select * from personal where name like "%af%";
 select * from personal where name like "i%s";
 select * from personal where name like "_a%";
 select * from personal where name like "__f%";
 select * from personal where name like "_li%";
select * from personal where binary name like "A%";
select count(name) from personal;
select count(name) as total_count from personal;
select * from personal;
select max(age) from personal;
select min(age) from personal;
select sum(age) from personal;
select avg(age) from personal;
select * from personal order by age;
select * from personal order by age desc;
select * from personal order by name, age;
select distinct name from personal;
select distinct name from personal order by name desc;
select * from personal limit 3;
select * from personal where gender = "F" limit 2;
select * from personal where gender = "F" order by name limit 2;
select * from personal limit 3, 3;
select * from personal order by id desc limit 3;
rename table personal to employee;
alter table employee add column d_id int;
update employee set d_id = 1001 where id = 1;
update employee set d_id = 1002 where id = 2;
update employee set d_id = 1003 where id = 3;
update employee set d_id = 1004 where id = 4;
update employee set d_id = 1005 where id = 5;
update employee set d_id = 1006 where id = 6;
update employee set d_id = 1007 where id = 7;
update employee set d_id = 1008 where id = 8;
create table department(
id int not null auto_increment primary key,
d_name varchar(25)
);
insert into department(d_name) values ("HR"),("Admin"),("Academics"),("Marketing");
select * from employee inner join department on employee.d_id = department.id; 
select * from employee e inner join department d on e.d_id = d.id; 

drop table department;
drop table employee;

select * from employee left join department on employee.id = department.id;

select * from student;
select * from course;
select s_name from student where c_id = (select c_id from course where c_name = "DMW");
select s_name, s_email from student where c_id = (select c_id from course where c_name = "Bootstrap");

