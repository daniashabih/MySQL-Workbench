create database  testingG;

 use  testingG;

 create table customer5
(
id int auto_increment PRIMARY KEY,
firstName  varchar(30),
lastName varchar(30),
email varchar(30),
city varchar(30),
phone varchar(30)
)
;
insert into customer5 values('','ali', 'fasih shah', 'ahmed@yahoo.com', 'karachi', '626-222');
insert into customer5 values('','tahir', 'faheem commandu', 'tahir@gmail.com', 'karachi', '323-455');
insert into customer5 values('','faisal', 'ahad khan', 'faisal@hotmail.com', 'lahore', '416-323');


select * from customer5;

CALL `testingG`.`new_procedure`('tahir', 'faheem commandu', 'tahir@gmail.com', 'karachi', '323-455');
CALL `testingG`.`new_procedure`('Dania', 'faheem commandu', 'tahir@gmail.com', 'karachi', '323-455');
