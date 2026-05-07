
-- Window Functions task - 1
-- employees(emp_id, name, department, salary)


create database wind;
use wind;
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    department VARCHAR(50) NOT NULL,
    salary INT NOT NULL
);
INSERT INTO employees (emp_id, name, department, salary) VALUES
(1, 'Ravi',   'IT',      60000),
(2, 'Sneha',  'IT',      75000),
(3, 'Arjun',  'IT',      75000),
(4, 'Priya',  'HR',      50000),
(5, 'Kiran',  'HR',      60000),
(6, 'Anjali', 'HR',      60000),
(7, 'Rahul',  'Finance', 80000),
(8, 'Meena',  'Finance', 70000),
(9, 'Vikram', 'Finance', 70000),
(10,'Divya',  'Sales',   45000),
(11,'Suresh', 'Sales',   45000),
(12,'Neha',   'Sales',   55000);
select * from employees;




-- 🚀 TASK SET (Real-Time Scenarios)

-- ✅ Task 1: Top Performer per Department
-- 👉 Get the highest paid employee in each department
select name,max(salary) over(partition by department) as highest_salary
from employees;

-- ✅ Task 2: Top 2 Employees per Department
-- 👉 Show top 2 salaries in each department
select name,salary,department from(select name,salary,department, dense_rank() over(partition by department order by salary desc) as top_two 
from employees) t 
where top_two<=2;

-- ✅ Task 3: Handle Salary Ties (Important)
-- 👉 If multiple employees have same highest salary, show all of them
select name,salary from(select name,salary, dense_rank() over(order  by salary desc) as highest_salary from employees) t
where highest_salary=1;


-- ✅ Task 4: Unique Ranking
-- 👉 Assign a unique row number to employees within each department
select *,row_number() over(partition by department  ORDER BY emp_id) as unique_number from employees;


-- ✅ Task 5: Continuous Ranking
-- 👉 Rank employees without skipping numbers even if salaries are same
select *,dense_rank() over(order by salary ) as employee_rank from employees;

-- ✅ Task 6: Competition Ranking
-- 👉 Rank employees where:
-- Same salary → same rank
-- Next rank is skipped
select *,rank() over(order by salary ) as employee_rank from employees;




-- ✅ Task 7: Find 2nd Highest Salary per Department
-- 👉 Return employees with 2nd highest salary
select name,salary,department from (select name,salary,department, dense_rank() over(partition by department order by salary desc) as salary_rank from employees )t
where  salary_rank=2;

-- ✅ Task 8: Bottom 2 Employees per Department
-- 👉 Get lowest 2 salary employees
select name ,salary ,department from(select name,salary,department,dense_rank() over(partition by department order by salary asc) as salary_rank from employees) t
where salary_rank<=2 ;

-- ✅ Task 9: Remove Duplicate Salaries
-- 👉 Show only one employee per salary per department
select name,department,salary from (select *,row_number() over(partition by department ,salary  order by name) as rn from employees) t 
where rn=1;

-- ✅ Task 10: Department-wise Salary Leaderboard
-- 👉 Display employees sorted by salary with ranking like:
-- IT → Rank 1, 2, 3...
-- HR → Rank 1, 2, 3...

select * ,row_number() over(partition by department order by salary desc) as salary_rank from employees;