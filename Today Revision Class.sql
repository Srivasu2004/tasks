create database sms;
use sms;
CREATE TABLE products (
product_id INT PRIMARY KEY,
product_name VARCHAR(50),
category VARCHAR(30),
price INT,
stock INT,
rating DECIMAL(2,1)
);
INSERT INTO products VALUES
(1,'Laptop','Electronics',75000,15,4.5),
(2,'Mobile','Electronics',25000,40,4.3),
(3,'Headphones','Electronics',3000,60,4.1),
(4,'Shoes','Fashion',4000,50,4.2),
(5,'T-Shirt','Fashion',1200,80,3.9),
(6,'Watch','Fashion',6000,25,4.4),
(7,'Refrigerator','Appliances',45000,10,4.6),
(8,'Microwave','Appliances',8000,18,4.0),
(9,'Air Conditioner','Appliances',55000,8,4.5),
(10,'Backpack','Accessories',2000,35,4.2),
(11,'Keyboard','Electronics',1500,70,4.1),
(12,'Mouse','Electronics',800,90,4.0);

select*
from products;

-- Find the total number of products in the table.

select count(product_id)
from products;

-- Find the total stock available for all products.

select sum(stock) as total_stocks
from products;

-- Find the average price of all products.
 select avg(price)
 from products;
 
 -- Find the highest price among all products.
select max(price)
from products;

-- Find the lowest price among all products.
select min(price)
from products;

-- Find the total number of products in Electronics category.

select  count(product_id) as products
from products
where category="electronics";
 
alter table products
add experiance varchar(55);


alter table  products
rename column product_name to name;

alter table products
modify price bigint;


set autocommit=0;
set sql_safe_updates=0;
update products
set price=+5000
where category="fashion";




