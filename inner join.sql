create database hello;
create table customers(
customer_id int primary key,
name varchar(50),
city  varchar(60));

INSERT INTO customers (customer_id, name, city) VALUES
(1, 'Ravi Kumar', 'Hyderabad'),
(2, 'Sneha Reddy', 'Bangalore'),
(3, 'Amit Sharma', 'Delhi'),
(4, 'Priya Singh', 'Mumbai'),
(5, 'Kiran Patel', 'Ahmedabad');



create table orders(
order_id int primary key,
customer_id int,
product_name varchar(50),
amount  int,
order_date date);

INSERT INTO orders (order_id, customer_id, product_name, amount, order_date) VALUES
(101, 1, 'Laptop', 55000, '2024-01-15'),
(102, 2, 'Mobile Phone', 20000, '2024-02-10'),
(103, 3, 'Headphones', 3000, '2024-03-05'),
(104, 4, 'Smart Watch', 8000, '2024-03-20'),
(105, 5, 'Tablet', 25000, '2024-04-01');

--  Get customer names and product names for all orders
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id;




--  Find customers who placed orders with amount greater than 20000
select customers.name,orders.amount>20000
from customers
inner join orders
on customers.customer_id = orders.customer_id;

--  Get customer name, city, and product name where city is 'Hyderabad'
select customers.name,customers.city,orders.product_name
from customers
inner join orders
on customers.customer_id = orders.customer_id
where customers.city="hyderabad";

--  Find all orders where product name starts with 'S' and amount is greater than 10000
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id
where  orders.amount>10000 and orders.product_name like"M%";

-- Get customers who ordered products between amount 10000 and 50000
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id
where  orders.amount between  10000 and 50000;

-- Find customer names who ordered either 'Laptop' or 'Mobile'
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id
where  orders.product_name ="laptop" or orders.product_name="Mobile Phone";

-- Get top 5 highest order amounts with customer names
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id
order by orders.amount desc
limit 5;

-- Skip first 5 highest orders and get next 5 records with customer name and amount
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id
order by orders.amount desc
limit 3 offset 2;

-- Find customers whose name starts with 'A' and who placed orders greater than 30000
select *
from customers
inner join orders
on customers.customer_id = orders.customer_id
where customers.name like "R%" and orders.amount>30000;

-- Get customer name, city, product name where:


select * 
from customers
inner join orders
on customers.customer_id = orders.customer_id
where customers.city ="delhi" or customers.city="mumbai" and  orders.amount>20000 and orders.name  "% op %" ;







