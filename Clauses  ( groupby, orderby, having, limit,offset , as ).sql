create database marketing;
use marketing;

CREATE TABLE products (
   product_id INT PRIMARY KEY,
   product_name VARCHAR(50),
   category VARCHAR(30),
   price DECIMAL(10,2),
   stock INT,
   brand VARCHAR(30)
);

INSERT INTO products VALUES
(1, 'iPhone 13', 'Mobile', 70000, 10, 'Apple'),
(2, 'Galaxy S21', 'Mobile', 60000, 15, 'Samsung'),
(3, 'Redmi Note 11', 'Mobile', 20000, 25, 'Xiaomi'),
(4, 'MacBook Air', 'Laptop', 90000, 5, 'Apple'),
(5, 'Dell Inspiron', 'Laptop', 55000, 8, 'Dell'),
(6, 'HP Pavilion', 'Laptop', 60000, 7, 'HP'),
(7, 'Sony Headphones', 'Accessories', 8000, 20, 'Sony'),
(8, 'Boat Earbuds', 'Accessories', 2000, 50, 'Boat'),
(9, 'iPad', 'Tablet', 50000, 12, 'Apple'),
(10, 'Samsung Tab', 'Tablet', 30000, 18, 'Samsung'),
(11, 'Asus Laptop', 'Laptop', 65000, 6, 'Asus'),
(12, 'OnePlus 11', 'Mobile', 55000, 14, 'OnePlus'),
(13, 'Realme Narzo', 'Mobile', 15000, 30, 'Realme'),
(14, 'Lenovo ThinkPad', 'Laptop', 75000, 4, 'Lenovo'),
(15, 'JBL Speaker', 'Accessories', 10000, 22, 'JBL'),
(16, 'Mi Pad', 'Tablet', 25000, 16, 'Xiaomi'),
(17, 'AirPods', 'Accessories', 15000, 9, 'Apple'),
(18, 'Oppo F21', 'Mobile', 22000, 19, 'Oppo'),
(19, 'Vivo V27', 'Mobile', 28000, 17, 'Vivo'),
(20, 'Noise Watch', 'Accessories', 5000, 40, 'Noise');
select *
from products;

-- Find total number of products in each category

select category ,count(*) as products
from products
group by category;

-- Find total stock available for each category
select category, sum(stock)
from products
group by category;

-- Find average price of products in each brand
select brand,avg(price)
from products
group by brand;

-- Count how many products each brand has
select brand, count(*) as total_products
from products
group by brand;

-- Find maximum price in each category
select category, max(price)
from products
group by category;

-- Find total stock per brand and sort it in descending order
select brand,sum(stock) as total_stock
from products
group by brand
order by  total_stock desc;

-- Find average price per category and display highest first
select category,avg(price) as total_price
from products
group by category
order by total_price desc;

-- Count products per category and sort by count (low to high)
select category,count(product_id) as total_products
from products
group by category
order by total_products asc;

-- Show categories having more than 3 products
select category,count(product_id) as total
from products
group by category
having total>3;

-- Show brands where total stock is greater than 40
select brand,sum(stock) as stock
from products
group by brand
having stock>40;

-- Find categories where average price is less than 30,000
select category,avg(price) as price
from products
group by category
having price<30000;

-- Show brands having more than 2 products
select brand,sum(product_id) as products
from products
group by brand
having products >2;

-- Find categories where maximum price is above 70,000
select category,max(price) as total_price
from products
group by category
having total_price >70000;

-- Find brands with total stock > 30 and sort by stock descending
select brand ,sum(stock) as stock
from products
group by brand
having stock>30
order by stock desc;

-- Show categories with avg price > 40,000 and sort highest first
select category,avg(price) as price
from products
group by category
having price>40000
order by price desc;

-- Count products per brand, show only brands with count ≥ 2, sort by count desc

select brand,count(product_id) as products
from products
group by brand
having products >=2
order by products desc;

-- Get top 5 most expensive products
select brand,price
from products
order by price desc
limit 5;

-- Get 3 cheapest products
select brand,price
from products

order by price asc
limit 3;
-- Skip first 5 highest priced products and get next 5
select brand,price
from products

order by price desc
limit 5 offset 5;

-- Get 4 products starting from the 3rd cheapest product
select brand,price
from products
order by price asc
limit 4  offset 3;











