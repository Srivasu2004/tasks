create database product;
use product;


CREATE TABLE products (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    category VARCHAR(50),
    brand VARCHAR(50),
    price DECIMAL(10,2),
    stock INT,
    is_available BOOLEAN,
    rating DECIMAL(2,1)
);
INSERT INTO products (id, name, category, brand, price, stock, is_available, rating) VALUES
(1, 'Laptop', 'Electronics', 'Dell', 55000.00, 10, TRUE, 4.5),
(2, 'Smartphone', 'Electronics', 'Samsung', 25000.00, 20, TRUE, 4.3),
(3, 'Headphones', 'Accessories', 'Sony', 3000.00, 15, TRUE, 4.2),
(4, 'Shoes', 'Fashion', 'Nike', 4500.00, 8, TRUE, 4.4),
(5, 'Watch', 'Accessories', 'Fastrack', 2000.00, 12, FALSE, 4.1);

select *
from products
where price >2000.00 or price<30000.00;

select *
from products;

select*
from products
where not rating=4.4;

select*
from products
where rating between 4.1 and 4.4;

select*
from products
where price in (20000 ,25000);


select*
from products
where price not in (2000,25000);


select*
from products
where name like"%h";

