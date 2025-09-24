-- Basic Commands:
/*
show databases;
create database foundation_1;
show databases;
use foundation_1;

create table students
(
id int primary key,
name varchar(100) not null,
marks int
);

select * from students;

insert into students(id, name, marks) values(1, 'Ram', 98);
insert into students values(2, 'Sita', 45);
insert into students values(3, 'Rita', 65);
*/

-- Foreign Key Concept:
/*
create database foundation_2;
show databases;
use foundation_2;

create table courses
(
course_id int primary key,
course_name varchar(100) not null,
course_duration int not null
);

select * from courses;

insert into courses values(1, 'B.Tech',4);
insert into courses values(2, 'BCA', 3);
insert into courses values(3, 'BSc', 3);

create table students
(
id int primary key,
name varchar(100) not null,
course_id int not null,
foreign key(course_id) references courses(course_id)
);

select * from students;

insert into students values(1, 'Harsh', 1);
insert into students values(2, 'Ram', 3);
insert into students values(3,'Sita', 2);
*/

-- Alter Command:
/*
create database foundation_3;
show databases;
use foundation_3;

create table courses
(
course_id int primary key,
course_name varchar(100) not null,
course_duration int not null
);

select * from courses;

insert into courses values(1, 'B.Tech',4);
insert into courses values(2, 'BCA', 3);
insert into courses values(3, 'BSc', 3);

create table students
(
id int primary key,
name varchar(100) not null,
age int check(age>=18),
college_name varchar(100) default 'DDU Gorakhpur University',
course_id int
);

alter table students add constraint foreign_key 
foreign key(course_id) references courses(course_id);

select * from students;

insert into students values(1, 'Harsh', 24, 'LU',1);
insert into students values(2, 'Ram', 34, 'AU', 3);
insert into students(id, name, age, course_id) values(3, 'Mohan', 21,2);
*/

-- Various Alter Commands:
/*
create database foundation_4;
show databases;
use foundation_4;

create table students
(
id int primary key,
name varchar(100) not null,
marks int
);

select * from students;

insert into students(id, name, marks) values(1, 'Ram', 98);
insert into students values(2, 'Sita', 45);
insert into students values(3, 'Rita', 65);

alter table students
add city varchar(100) default 'Gorakhpur';

alter table students
modify marks int check(marks>=40);

insert into students values(4, 'Rohan', 67, 'Mumbai');

alter table students
add country varchar(100);

alter table students 
drop column country;

alter table students
rename column city to home_town;

alter table students
rename to student_list;

select * from student_list;

alter table student_list 
rename to students;

alter table students
rename column home_town to city;
*/

-- Truncate Command:
/*
create database foundation_5;
show databases;
use foundation_5;

create table students
(
id int primary key,
name varchar(100) not null,
marks int
);

select * from students;

insert into students values(1, 'Ram', 98);

truncate table students;
*/

-- Update and Delete Commands:
/*
create database foundation_6;
show databases;
use foundation_6;

create table students
(
id int primary key,
name varchar(100) not null,
marks int
);

select * from students;

insert into students values(1, 'Ram', 98);
insert into students values(2, 'Sita', 78);

update students set name='Mohit' where id=2;
delete from students where id=1;
*/

-- TCL Commands:
/*
create database foundation_7;
show databases;
use foundation_7;

create table students
(
id int primary key,
name varchar(100) not null,
marks int
);

select * from students;

start transaction;
insert into students values(1, 'Ram', 98);
savepoint s1;
insert into students values(2, 'Raman', 78);
savepoint s2;
insert into students values(3, 'Sita', 80);
savepoint s3;
rollback to s1;
commit;
*/

-- DCL Commands:
/*
create database foundation_8;
show databases;
use foundation_8;

create table students
(
id int primary key,
name varchar(100) not null,
marks int
);

select * from students;

grant select on students to user1;
grant insert on students to user1;
grant update,delete on students to user1;
revoke insert, delete on students from user1;
*/
