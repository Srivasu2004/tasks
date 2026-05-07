use employe2;

select*
from employe2;


alter table employe2
add department varchar(250);


alter table employe2
add loc varchar(260);


alter table employe2
modify loc text;


alter table employe2
rename  column loc to location;


alter table employe2
drop column is_active;


update employe2
set  location="hyderabad ,kphp ,street 3"
where emp_id = 1 ;
 
 
 update employe2
 set location  = "hyderabad ,kphp ,street 3";
 
 update employe2
 set salary=80000
where emp_id=15; 


update employe2
set salary=900000
where emp_id=15;