create database employess;
use employess;
create table employess(
id int primary key,
first_name varchar(50),
last_name varchar(60),
department varchar(250));

insert into employess(id,first_name,last_name,department)
values(1,"sri","vasu","cse"),
(2,"pavan","kumar","cse"),
(3,"sasi","kumar","ece"),
(4,"raju","moli","cse"),
(5,"harsha","sai","ece");

select*
from employess;
