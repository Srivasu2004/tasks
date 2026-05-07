create database product;
use product;


CREATE TABLE products2(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    is_available BOOLEAN,
    rating DECIMAL(2,1)
);
INSERT INTO products2 (id, name, category, brand, price, stock, is_available, rating) VALUES
(1, 'iPhone 14', 'Electronics', 'Apple', 79999.00, 15, TRUE, 4.8),
(2, 'Galaxy S23', 'Electronics', 'Samsung', 69999.00, 20, TRUE, 4.5),
(3, 'MacBook Air', 'Electronics', 'Apple', 119999.00, 10, TRUE, 4.7),
(4, 'Galaxy Tab S8', 'Electronics', 'Samsung', 49999.00, 5, TRUE, 4.4),
(5, 'Sony Headphones', 'Accessories', 'Sony', 9999.00, 25, TRUE, 4.3),
(6, 'Dell Laptop', 'Electronics', 'Dell', 85999.00, 8, TRUE, 4.6),
(7, 'Samsung Watch', 'Accessories', 'Samsung', 12999.00, 12, TRUE, 4.2),
(8, 'iPad Pro', 'Electronics', 'Apple', 89999.00, 7, TRUE, 4.7),
(9, 'Logitech Mouse', 'Accessories', 'Logitech', 1999.00, 50, TRUE, 4.1),
(10, 'OnePlus 11', 'Electronics', 'OnePlus', 59999.00, 18, TRUE, 4.4);

select *
from products2
where price >2000.00 or price<30000.00;

select *
from products2;

select*
from products2
where not rating=4.4;

select*
from products2
where rating between 4.1 and 4.4;

select*
from products2
where price in (20000 ,25000);


select*
from products2
where price not in (2000,25000);


select*
from products2
where name like"%h";

select*
from products2
where brand = "apple" and price >80000;

select*
from products2
where not brand ="samsung" or price<5000;


select*
from products2
where category ="electronic" and stock>10;


select*
from products2
where brand="apple" or brand="samsung" and price<90000;

select*
from products2
where is_available=true and brand ="samsung" or brand ="oneplus";