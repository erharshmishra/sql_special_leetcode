-- Operators:
/*
show databases;
create database foundation_12;
use foundation_12;

create table customers
(
customer_id int not null unique,
product_rate int,
quanity int
);

select * from customers;

insert into customers values(1, 100, 3);
insert into customers values(2, 50, 4);
insert into customers values(3, 200, 5);

-- Arithmetic Operator:

select * , ( product_rate * quanity ) bill from customers;
select customer_id , ( product_rate * quanity ) bill from customers;

-- Comparison Operator:

select customer_id , ( product_rate * quanity ) bill from customers where quanity >= 4;
select * from customers where quanity >= 4;

-- Logical Operator:

select * from customers where quanity between 2 and 4;
select * from customers where customer_id%2=0 and quanity >=4;
select * from customers where customer_id%2=0 or quanity >=4;
select * from customers where customer_id in (1,6);
select * from customers where customer_id not in (1,6);

create table students 
(
id int primary key,
name varchar(100)
);

select * from students;

insert into students values(1, 'Riya');
insert into students values(2, 'Seema');
insert into students values(3, 'Babita');
insert into students values(4, 'Jerry');
insert into students values(5, 'Tom');

select * from students where name like '%e%';
select * from students where name like 'b%';
select * from students where name like '%a';
select * from students where name like '_e%';

-- Question:

create table departments
(
dept_id int primary key,
department_name varchar(100)
);

select * from departments;

insert into departments values(1, 'HR');
insert into departments values(2, 'Admin');
insert into departments values(3, 'Finance');
insert into departments values(4, 'Technical');
insert into departments values(5, 'R and D');

create table employees
(
emp_id int primary key,
name varchar(100),
dept_id int,
foreign key(dept_id) references departments(dept_id)
);

select * from employees;

insert into employees values(1, 'Arjun', 1);
insert into employees values(2, 'Ted', 2);
insert into employees values(3, 'Apurv', 3);
insert into employees values(4, 'Manpreet', 1);
insert into employees values(5, 'Dharamveer', 1);
insert into employees values(6, 'Nitish', 3);
insert into employees values(7, 'Saurabh', 4);

-- Left Join:

select * from employees e left join departments d on e.dept_id = d.dept_id;

-- Group By:

select d.department_name, count(e.emp_id) no_of_employees from employees e left join departments d 
on e.dept_id = d.dept_id group by d.department_name;

-- Having:

select d.department_name, count(e.emp_id) no_of_employees from employees e left join departments d 
on e.dept_id = d.dept_id group by d.department_name having count(e.emp_id)>= 2;

select d.department_name, count(e.emp_id) no_of_employees from employees e left join departments d 
on e.dept_id = d.dept_id group by d.department_name having no_of_employees >= 2;


-- Order By:

select d.department_name, count(e.emp_id) no_of_employees from employees e left join departments d 
on e.dept_id = d.dept_id group by d.department_name having count(e.emp_id) >= 2 order by count(e.emp_id);

select d.department_name, count(e.emp_id) no_of_employees from employees e left join departments d 
on e.dept_id = d.dept_id group by d.department_name having no_of_employees >= 2 order by no_of_employees;

select d.department_name, count(e.emp_id) no_of_employees from employees e left join departments d 
on e.dept_id = d.dept_id group by d.department_name having no_of_employees >= 2 order by no_of_employees desc;

-- Views:

create view view_1 as
select * from employees;

drop view view_1;

select * from view_1;

create view view_2 as
select * from employees where emp_id % 2 = 0;

select * from view_2;

create or replace view view_2 as
select * from employees where emp_id % 2 !=0;

-- Indexing:

create index index_1 on employees(emp_id, name);
create index index_2 on departments(dept_id);

-- Case Statements:

create table products
(
product_id int primary key,
product_name varchar(100),
product_rating int
);

select * from products;

insert into products values(1, 'P1', 5);
insert into products values(2, 'P2', 4);
insert into products values(3, 'P3', 8);

select product_id, product_name, product_rating, 
case 
when product_rating > 5 then 'Good'
when product_rating < 5 then 'Bad'
else 'Average'
end feedback from products;
*/