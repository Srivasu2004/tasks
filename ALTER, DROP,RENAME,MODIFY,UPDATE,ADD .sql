create database employees1;
use employees1;

create table employees1(emp_id int primary key not null,
name varchar(50),
age int,
department varchar(60),
salary int);

INSERT INTO employees1 (emp_id, name, age, department, salary) VALUES
(1, 'Ramesh', 25, 'IT', 40000),
(2, 'Suresh', 30, 'HR', 35000),
(3, 'Mahesh', 28, 'Finance', 45000),
(4, 'Anita', 26, 'Marketing', 38000),
(5, 'Kavya', 27, 'IT', 42000);

alter table employees1
add experience int;


alter table employees1
rename column name to emp_name;

alter table employees1
modify salary bigint;

update employees1
set experience=6
where emp_id=3;
set autocommit=0;
set sql_safe_updates=0;
update employees1
set salary=+5000
where department="it";

update employees1
set department="sales"
where emp_id=5;

update employees1
set experience=1
where experience="";

alter table employees1
add city varchar(250);

update employees1
set city="hyderabad"
where department="it";

update company_employees
set salary =salary * 1.10
where experience>5;



rename table employees1 to company_employees;  

alter table company_employees
drop column city;

select*
from company_employees;





