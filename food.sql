create database resturantFooditems;
use  resturantFooditems;
create table iteams(
id int primary key,
veg varchar (255),
vegprice int,
nonveg varchar(255),
nonvegprice int);
INSERT INTO iteams (id, veg, vegprice, nonveg, nonvegprice) VALUES
(1, 'Paneer Tikka', 250, 'Chicken Tikka', 350),
(2, 'Veg Biryani', 200, 'Chicken Biryani', 300),
(3, 'Veg Burger', 150, 'Chicken Burger', 200),
(4, 'Margherita Pizza', 300, 'Pepperoni Pizza', 450),
(5, 'Veg Sandwich', 100, 'Club Sandwich', 180),
(6, 'Palak Paneer', 220, 'Butter Chicken', 380),
(7, 'Dal Makhani', 180, 'Mutton Curry', 400),
(8, 'Veg Noodles', 150, 'Chicken Noodles', 220),
(9, 'Veg Fried Rice', 160, 'Chicken Fried Rice', 230),
(10, 'Aloo Gobi', 120, 'Fish Fry', 320),
(11, 'Veg Manchurian', 170, 'Chilli Chicken', 280),
(12, 'Mixed Veg Curry', 190, 'Egg Curry', 210),
(13, 'Veg Pulao', 140, 'Chicken Tikka Masala', 360),
(14, 'Paneer Butter Masala', 260, 'Mutton Biryani', 420),
(15, 'Veg Korma', 180, 'Chicken Korma', 290),
(16, 'Veg Kathi Roll', 110, 'Chicken Kathi Roll', 170),
(17, 'Veg Momos', 90, 'Chicken Momos', 130),
(18, 'Veg Pasta', 200, 'Chicken Pasta', 250),
(19, 'Veg Platter', 400, 'Non-Veg Platter', 600),
(20, 'Veg Thali', 220, 'Non-Veg Thali', 350);


select*
from iteams;


select*
from iteams
where vegprice>=150 and nonvegprice>=200;




