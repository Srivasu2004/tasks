create database company_db;
use company_db;
create table company_db(emp_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary INT,
age INT,
city VARCHAR(50),
joining_date DATE,
email VARCHAR(100),
is_active BOOLEAN);
INSERT INTO company_db 
(emp_id, name, department, salary, age, city, joining_date, email, is_active) 
VALUES
(1, 'Ravi Kumar', 'IT', 50000, 25, 'Hyderabad', '2022-01-10', 'ravi@gmail.com', TRUE),

(2, 'Sita Reddy', 'HR', 40000, 28, 'Chennai', '2021-03-15', 'sita@gmail.com', TRUE),

(3, 'Amit Sharma', 'Finance', 55000, 30, 'Delhi', '2020-07-20', 'amit@gmail.com', TRUE),

(4, 'Priya Singh', 'IT', 60000, 27, 'Bangalore', '2023-02-05', 'priya@gmail.com', TRUE),

(5, 'Kiran Rao', 'Marketing', 45000, 29, 'Mumbai', '2019-11-12', 'kiran@gmail.com', FALSE),

(6, 'Anjali Mehta', 'HR', 42000, 26, 'Pune', '2022-06-18', 'anjali@gmail.com', TRUE),

(7, 'Rahul Das', 'Finance', 52000, 31, 'Kolkata', '2018-09-25', 'rahul@gmail.com', TRUE),

(8, 'Sneha Patel', 'IT', 58000, 24, 'Ahmedabad', '2023-01-01', 'sneha@gmail.com', TRUE),

(9, 'Vikram Jain', 'Marketing', 47000, 32, 'Jaipur', '2020-05-30', 'vikram@gmail.com', FALSE),

(10, 'Pooja Nair', 'IT', 62000, 27, 'Kochi', '2021-12-10', 'pooja@gmail.com', TRUE);

select*
from company_db;

select name,salary
from company_db;


select*
from company_db
where salary>50000;


select*
from company_db
where age<30;



select*
from company_db
where city="hyderabad";


select*
from company_db
where department="it";


select*
from company_db
where salary>40000 and department="it";



select*
from company_db
where city="hyderabad" or city="bangalore";


select*
from company_db
where not department="hr";

select*
from company_db
where salary<=30000;

select*
from company_db
where age>=25;

select*
from company_db
where salary between 30000 and 60000;

select*
from company_db
where age between 22 and 35;

select*
from company_db
where department in ("it","sales","marketing");

select*
from company_db
where department not in ("hr","admin");

select*
from company_db
where name like"a%";

select*
from company_db
where name like"%n";

select*
from company_db
where name like"%a%";

select*
from company_db
where email="";


select*
from company_db
where not email="";

select*
from company_db
where is_active="1";


select*
from company_db
where is_active="0";

select*
from company_db
where salary>50000 and city="hyderabad";

select*
from company_db
where salary<40000 or department="it";

select*
from company_db
where joining_date >"2021-03-01";

select*
from company_db
where joining_date <"2023-04-03";

select*
from company_db
where city like "b%";

select*
from company_db
where city like"%a";


select*
from company_db
where city like"%ar%";

select*
from company_db
where salary not between 10000 and 30000;




