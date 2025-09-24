-- Sub Queries:
/*
show databases;
create database foundation_13;
use foundation_13;

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

-- Single Row Subquery:

select * from employees where dept_id = ( select dept_id from departments where department_name = 'HR');

-- Multi Row Subquery:

select * from employees where dept_id in ( select dept_id from departments where department_name = 'HR' or department_name = 'Finance');

create table employee_list 
(
emp_id int primary key,
name varchar(100),
salary int,
mngr_id int
);

select * from employee_list;

insert into employee_list values(1, 'Jenny', 10000, 5);
insert into employee_list values(2, 'Ben', 50000, 3);
insert into employee_list values(3, 'Teren', 15000, 4);
insert into employee_list values(4, 'Isabella', 50000, 5);
insert into employee_list values(5, 'John', 70000, null);

-- Second Highest:

select max(salary) from employee_list where salary not in( select max(salary) from employee_list);

-- Manger salary < Employee Salary:

select * from employee_list e where salary > ( select salary from employee_list m where e.mngr_id = m.emp_id);

-- Employee name with their manger name:

-- Using Join:

select e.name employee_name , m.name manger_name  from employee_list e join employee_list m where e.mngr_id = m.emp_id;
select e.name employee_name , m.name manger_name  from employee_list e left join employee_list m on e.mngr_id = m.emp_id;

-- Using Subquery:

select name employee_name , ( select name from employee_list m where e.mngr_id = m.emp_id) manager_name from  employee_list e;
*/