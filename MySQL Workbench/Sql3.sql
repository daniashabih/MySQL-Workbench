use aptech;
create table student(
s_id int not null auto_increment primary key,
s_name varchar(25),
s_email varchar(200),
s_phone_no bigint,
c_id int
);
create table course(
c_id int not null auto_increment primary key,
c_name varchar(25)
);
insert into student (s_name, s_email, s_phone_no) values ("Ali", "ali@gmail.com", 03453252181),("Usama", "ali@gmail.com", 03453252181),
("Haroon", "ali@gmail.com", 03453252181),("Shakeel", "ali@gmail.com", 03453252181);
insert into course (c_name) values ("DMW"),("Bootstrap"),("JavaScript"),("JSON");
ALTER TABLE student ADD FOREIGN KEY (c_id) REFERENCES course (c_id);
select * from student;
select * from course;
truncate table student;
insert into student (s_name, s_email, s_phone_no, c_id) values ("Ali", "ali@gmail.com", 03453252181, 1),("Usama", "ali@gmail.com", 03453252181, 2),
("Haroon", "ali@gmail.com", 03453252181, 3),("Shakeel", "ali@gmail.com", 03453252181, 2);
insert into student (s_name, s_email, s_phone_no, c_id) values ("Ali", "ali@gmail.com", 03453252181, 7);
select * from student inner join course on student.c_id = course.c_id;
select * from student right join course on student.c_id = course.c_id;
select * from student left join course on student.c_id = course.c_id;
select * from student cross join course;
-- commit;
-- update student set s_name = "Alia" where s_id = 1;
-- rollback;
select * from student;
select * from course;
select * from student inner join course on student.c_id = course.c_id;
select * from student right join course on student.c_id = course.c_id;
select * from student left join course on student.c_id = course.c_id;
select * from student self join course on student.c_id = course.c_id;
-- update student set s_name = "Umama" where s_id = 2;             
-- rollback;
select * from student cross join course;
delete student, course from student inner join course on student.c_id = course.c_id where course.c_id = 1;
select * from student natural join course;
