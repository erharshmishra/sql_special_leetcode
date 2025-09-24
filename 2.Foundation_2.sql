-- Aggregate Functions:
/*
show databases;
create database foundation_9;
use foundation_9;

create table students
(
id int primary key,
name varchar(50) not null,
marks int,
age int
);

show tables;

insert into students values(1, 'Harsh', 90, 19);
insert into students values(2, 'Suresh', 50, 20);
insert into students values(3, 'Pratik', 80, 19);
insert into students values(4, 'Dhanraj', 95, 21);
insert into students values(5, 'Ram', 85, 18);

select * from students;

select avg(marks) from students;
select count(id) from students;
select max(marks) from students;
select min(marks) from students;
select sum(marks) from students;
*/

-- Scalar Functions:
/*
select ucase('Harsh') from dual; -- Dual is a dummy table present in sql.

show databases;
create database foundation_10;
use foundation_10;

create table students
(
id int primary key,
name varchar(50) not null,
marks int,
age int
);

show tables;

insert into students values(1, 'Harsh', 90, 19);
insert into students values(2, 'Suresh', 50, 20);
insert into students values(3, 'Pratik', 80, 19);
insert into students values(4, 'Dhanraj', 95, 21);
insert into students values(5, 'Ram', 85, 18);

select * from students;

select ucase('Harsh') from students; -- It will change all the name in HARSH. So we have to use WHERE.
select ucase('Harsh') from students where id=1;

select ucase('Mohan') from dual;
select lcase('Mohan') from dual;
select length('Mohan') from dual;
select round(9.9876,2) from dual;
select now() from dual;
select substring('Harhs',1,3) from dual; -- Here 1 is starting index.  
select concat('Harsh',' Mishra') from dual;
select replace('Harsh','h','t') from dual;
select trim('H' from'Harsh');
select date_format(now(),'%Y-%M-%D') from dual;
select date_format(now(),'%D-%M-%Y') from dual;
select date_format(now(),'%y-%m-%d') from dual;
*/

-- Joins:
/*
show databases;
create database foundation_11;
use foundation_11;

create table courses
(
course_id int primary key,
name varchar(50) not null,
duration int not null
);

alter table courses
rename column name to course_name;

show tables;

insert into courses values(1, 'BTECH', 4);
insert into courses values(2, 'BCA', 3);
insert into courses values(3, 'BSC', 3);
insert into courses values(4, 'MBA', 2);

select * from courses;

create table students
(
roll_no int primary key,
name varchar(50) not null,
course_id int,
foreign key(course_id) references courses(course_id)
);

show tables;

insert into students values(1, 'Jennie', 1);
insert into students values(2, 'Preety', 2);
insert into students values(3, 'Soham', 1);
insert into students(roll_no,name) values(4, 'Harry');
insert into students values(5, 'Robet', 3);
insert into students(roll_no,name) values(6, 'Lisa');

select * from students;

-- Inner Join:

select * from students s inner join courses c on s.course_id = c.course_id;

-- Left Join:

select * from students s left join courses c on s.course_id = c.course_id;

-- Right Join:

select * from students s right join courses c on s.course_id = c.course_id;

-- Full Join:

select * from students s left join courses c on s.course_id = c.course_id
union
select * from students s right join courses c on s.course_id = c.course_id;

create table employees 
(
emp_id int,
name varchar(100),
mngr_id int
);

show tables;

insert into employees values(1, 'Ben', 2);
insert into employees values(2, 'Kelvin', 3);
insert into employees values(3, 'Isabella', 1);
insert into employees values(4, 'Robet', 6);
insert into employees values(5, 'Lisa', 1);
insert into employees values(6, 'Daisy', 1);

select * from employees;

-- Self Join:

select * from employees e1 join employees e2 on e1.mngr_id = e2.emp_id;
select e1.emp_id, e1.name, e1.mngr_id, e2.name manger_name from employees e1 join employees e2 on e1.mngr_id = e2.emp_id;
select e1.emp_id, e1.name, e1.mngr_id, e2.name manger_name from employees e1 left join employees e2 on e1.mngr_id = e2.emp_id;

-- Cross Join:

select * from students, courses;

-- Union:

select * from students union select * from courses;

-- Union All:

select * from students union all select * from courses;  -- It also allow duplicate values.
*/