create database studentss;
use studentss;
-- task 1  — Create a Table


CREATE TABLE studentss (
id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
course VARCHAR(50)
);
-- task2  — DELETE with Transaction

INSERT INTO studentss(name,course) VALUES
('Ram','Python'),
('John','Java'),
('Sara','React'),
('Ravi','SQL');

select*
from studentss;

set autocommit=0;

select*
from studentss;



delete from studentss
where id=2;

rollback;
-- yes the row will come back.


-- task3 — COMMIT Example

delete from studentss
where id=3;

commit;
rollback;
-- no i dont get the row back.

--  Task 4 — DELETE Without WHERE

delete from studentss
where id=1;

rollback;

-- i got back the row and delete from studentss qurie will gatting error using safe update.

-- task5 — TRUNCATE

truncate  table studentss;

select*
from studentss;

rollback;

-- no that it not come back.
-- task6 DROP Table

drop table studentss;

select*
from studentss;

-- the table is not founded.

-- Task 7 — Identify the Command


--  delete from students where id=1;
--  truncate table studentss;
-- drop table studentss;
-- rollback;
-- commit;

