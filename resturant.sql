show tables;
create database resturant;
use resturant;
create table vasu_foods(


item_id INT PRIMARY KEY AUTO_INCREMENT,

item_name VARCHAR(60) NOT NULL UNIQUE,

category VARCHAR(30) NOT NULL
CHECK (category IN (
'Veg Soup',
'Non Veg Soup',
'Veg Starter',
'Non Veg Starter',
'Veg Biryani',
'Non Veg Biryani'
)),

price DECIMAL(6,2) NOT NULL CHECK (price > 0),

is_veg BOOLEAN NOT NULL,

spice_level VARCHAR(10) NOT NULL
CHECK (spice_level IN ('Low','Medium','High')),

calories INT CHECK (calories BETWEEN 100 AND 1500),

preparation_time INT NOT NULL CHECK (preparation_time BETWEEN 5 AND 60),

rating DECIMAL(2,1) CHECK (rating BETWEEN 1 AND 5),

available BOOLEAN DEFAULT TRUE

);
INSERT INTO vasu_foods
(item_name,category,price,is_veg,spice_level,calories,preparation_time,rating)
VALUES
('Tomato Soup','Veg Soup',120,TRUE,'Low',150,10,4.3),
('Sweet Corn Soup','Veg Soup',130,TRUE,'Low',180,10,4.4),
('Hot and Sour Veg Soup','Veg Soup',140,TRUE,'Medium',200,12,4.5),
('Mushroom Soup','Veg Soup',150,TRUE,'Medium',220,12,4.4),
('Veg Manchow Soup','Veg Soup',140,TRUE,'Medium',210,12,4.5),
('Chicken Soup','Non Veg Soup',160,FALSE,'Low',230,12,4.5),
('Chicken Manchow Soup','Non Veg Soup',180,FALSE,'Medium',260,14,4.6),
('Chicken Hot and Sour Soup','Non Veg Soup',170,FALSE,'Medium',250,14,4.5),
('Mutton Soup','Non Veg Soup',200,FALSE,'Medium',300,16,4.6),
('Fish Soup','Non Veg Soup',190,FALSE,'Medium',280,15,4.5),
('Gobi Manchurian','Veg Starter',180,TRUE,'Medium',450,15,4.5),
('Paneer 65','Veg Starter',200,TRUE,'High',500,18,4.6),
('Baby Corn Fry','Veg Starter',190,TRUE,'Medium',420,15,4.4),
('Mushroom Fry','Veg Starter',210,TRUE,'Medium',430,16,4.5),
('Punugulu','Veg Starter',120,TRUE,'Medium',300,10,4.3),
('Garelu','Veg Starter',130,TRUE,'Medium',320,10,4.4),
('Chicken 65','Non Veg Starter',240,FALSE,'High',550,18,4.7),
('Apollo Fish','Non Veg Starter',280,FALSE,'Medium',520,20,4.6),
('Chicken Majestic','Non Veg Starter',260,FALSE,'High',580,18,4.7),
('Chilli Chicken','Non Veg Starter',250,FALSE,'High',560,17,4.6),
('Veg Biryani','Veg Biryani',220,TRUE,'Medium',650,20,4.5),
('Paneer Biryani','Veg Biryani',240,TRUE,'Medium',700,22,4.6),
('Mushroom Biryani','Veg Biryani',230,TRUE,'Medium',680,20,4.5),
('Kaju Biryani','Veg Biryani',260,TRUE,'Medium',720,22,4.6),
('Chicken Biryani','Non Veg Biryani',280,FALSE,'High',900,25,4.8),
('Chicken Dum Biryani','Non Veg Biryani',300,FALSE,'High',950,28,4.8),
('Mutton Biryani','Non Veg Biryani',350,FALSE,'High',1000,30,4.9),
('Natukodi Biryani','Non Veg Biryani',330,FALSE,'High',950,28,4.8),
('Prawn Biryani','Non Veg Biryani',340,FALSE,'High',920,26,4.8),
('Fish Biryani','Non Veg Biryani',320,FALSE,'High',880,25,4.7);

select*
from vasu_foods;


select*
from vasu_foods
where spice_level ="high";


select*
from vasu_foods
where is_veg and spcie_level="medium";

select*
from vasu_foods
where category="veg starter" and rating>4.5;

select*
from vasu_foods
where is_veg="1" or is_veg="0";


select*
from vasu_foods
where price between 100 and 200;

select*
from vasu_foods
where  not spice_level="medium";

select *
from vasu_foods
where rating not in (4.4);

select*
from vasu_foods
where category in ("veg soup");
