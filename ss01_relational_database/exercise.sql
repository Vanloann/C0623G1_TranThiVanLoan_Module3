create database my_database;
use my_database;
create table class(
id int primary key auto_increment,
class_name varchar(50)
);
insert into class (class_name) values ('C0623G1');
select * from class;

create table teacher(
id int primary key auto_increment,
teacher_name varchar(50),
age int,
country varchar(55)
);

select * from teacher;
