create database vsm;
use vsm;
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);
INSERT INTO departments VALUES
(1, 'HR'),
(2, 'IT'),
(3, 'Finance'),
(4, 'Marketing');


CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    salary INT,
    dept_id INT
);

INSERT INTO employees VALUES
(101, 'Vasu', 50000, 2),
(102, 'Ravi', 40000, 1),
(103, 'Teja', 45000, 2),
(104, 'Kiran', 38000, 3),
(105, 'Suresh', 42000, NULL);


--  Write a query to display all employees and their department names.

select *
from departments
left join employees
on departments.dept_id = employees.dept_id;


-- 👉 Write a query to display all employees along with department names, and show "No Department" if an employee is not assigned to any department.
select  employees.emp_name, ifnull (departments.dept_name ,"no department") as dept_name
from employees
left join departments
on departments.dept_id = employees.dept_id;


--  👉 Write a query to find employees who do not belong to any department.


select  *
from employees
left join departments
on departments.dept_id = employees.dept_id
where departments.dept_id is null;

-- 👉 Write a query to display all departments and the number of employees in each department.
select departments.dept_name,count(employees.emp_id)as employe_total
from employees
left join departments
on employees.dept_id = departments.dept_id
group by departments.dept_name;


-- 👉 Write a query to display all employees and only their department name if it is 'IT', otherwise show NULL.
select  *
from employees
left join departments
on departments.dept_id = employees.dept_id and departments.dept_name = "it";


-- 👉 Write a query to display only employees who belong to the 'HR' department.
select  *
from employees
left join departments
on departments.dept_id = employees.dept_id 
where departments.dept_name = "hr";

-- 👉 Write a query to display employee name and department name, but only include departments where dept_id = 101 using LEFT JOIN condition.


select employees.emp_name,departments.dept_name
from employees
left join departments
on departments.dept_id = employees.dept_id  
where employees.emp_id = 101;

 -- Write a query to display all departments that do not have any employees.

  select departments.dept_name,employees.emp_name is not null
from departments
left join employees
on departments.dept_id = employees.dept_id  ;

-- 👉 Write a query to display employee name and department name, sorted by department name.
  select departments.dept_name,employees.emp_name 
from departments
left join employees
on departments.dept_id = employees.dept_id;


-- 👉 Write a query to display:
select employees.emp_name,departments.dept_name ,if(departments.dept_id is null,"not assigned","assigned") as total
from employees
left join departments
on employees.dept_id = departments.dept_id;
