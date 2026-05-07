create database employe2;
use employe2;
create table employe2(
emp_id int primary key,
name varchar(50),
department varchar(50),
salary int,
age int,
city varchar(50),
joining_date  Date,
email varchar(100),
is_active BOOlEAN);
insert into employe2 values
(1,'Rahul Sharma','HR',45000,28,'Delhi','2021-03-15','rahul@gmail.com',TRUE),

 (2,'Priya Singh','IT',60000,26,'Mumbai','2022-06-10','priya@gmail.com',TRUE),

 (3,'Amit Verma','Finance',55000,30,'Bangalore','2020-01-20','amit@gmail.com',TRUE),

 (4,'Sneha Reddy','Marketing',48000,27,'Hyderabad','2021-09-12','sneha@gmail.com',TRUE),

 (5,'Rohit Gupta','IT',72000,32,'Pune','2019-11-05','rohit@gmail.com',TRUE),

 (6,'Anjali Mehta','HR',40000,25,'Ahmedabad','2023-02-18','anjali@gmail.com',TRUE),

(7,'Vikas Yadav','Sales',52000,29,'Lucknow','2022-04-25','vikas@gmail.com',TRUE),

(8,'Neha Kapoor','Finance',61000,31,'Chandigarh','2020-08-30','neha@gmail.com',TRUE),

 (9,'Arjun Nair','IT',68000,28,'Kochi','2021-12-14','arjun@gmail.com',TRUE),

(10,'Pooja Patel','Marketing',47000,26,'Surat','2022-10-11','pooja@gmail.com',TRUE),

(11,'Karan Malhotra','Sales',53000,33,'Delhi','2019-07-22','karan@gmail.com',TRUE),

 (12,'Divya Iyer','IT',75000,29,'Chennai','2020-05-16','divya@gmail.com',TRUE),

 (13,'Manish Kumar','HR',42000,34,'Patna','2018-03-09','manish@gmail.com',FALSE),

 (14,'Asha Nair','Finance',59000,27,'Trivandrum','2021-06-28','asha@gmail.com',TRUE),

 (15,'Suresh Reddy','IT',70000,35,'Hyderabad','2019-01-17','suresh@gmail.com',TRUE),
(16,'Meena Das','Marketing',46000,24,'Kolkata','2023-04-03','meena@gmail.com',TRUE),

 (17,'Ravi Shankar','Sales',51000,30,'Varanasi','2022-09-19','ravi@gmail.com',TRUE),

 (18,'Nikita Jain','HR',43000,28,'Jaipur','2021-11-07','nikita@gmail.com',TRUE),

 (19,'Aditya Roy','Finance',64000,31,'Kolkata','2020-02-26','aditya@gmail.com',TRUE),
 (20,'Simran Kaur','IT',69000,27,'Amritsar','2022-12-08','simran@gmail.com',TRUE);
 
 
 
select *
from employe2;

select *
from employe2
where name or salary;

select*
from employe2
where age<30;

select*
from employe2
where salary>50000;


select*
from employe2
where city=hyderabad;

select*
from employe2
where department = "IT";
select*
from employe2
where salary>40000 and department ="it";

select*
from employe2
where city="hyderabad" or city="bangalore";

select*
from employe2
where department <> "hr";


select*
from employe2
where salary<=30000;




select*
from employe2
where salary between 22 and 35;

select*
from employe2
where department in ("it","sales","marketing");

select*
from employe2
where department not in ("hr","admin");

select*
from employe2
where name like "a%";

select*
from employe2
where name like "%n";

select *
from employe2
where name contains=("a");

select*
from employe2
where email="";

select*
from employe2
where email!="";

select*
from employe2
where is_active="1";

select*
from employe2
where is_active="0";

select*
from employe2
where salary>50000 and city="hyderabad";

select*
from employe2
where salary<40000 or department="hr";

select*
from employe2
where joining_date >="2022-01-01";


select*
from employe2
where joining_date <="2021-01-01";

select*
from employe2
where city like"B%";


select*
from employe2
where city like "%a";

select *
from employe2
where name like "%a%";

select*
from employe2
where salary not between 40000 and 70000;