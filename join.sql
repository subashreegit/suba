use suba;
create table PHD_student (
	SNO INT(5) primary key auto_increment,
    PHD_student_name nvarchar(15),
    mark int(10)
    );
    ALTER TABLE PHD_student auto_increment= 100;
INSERT into PHD_student (PHD_student_name,mark) values('thanam',69);
INSERT into PHD_student (PHD_student_name,mark) values('manam',19);
INSERT into PHD_student (PHD_student_name,mark) values('varam',69);
INSERT into PHD_student (PHD_student_name,mark) values('ganam',29);
INSERT into PHD_student (SNO,PHD_student_name,mark) values(7,'banu',79);


select * 
from student 
right join PHD_student 
on student.SNO=PHD_student.SNO;

select * 
from student 
left join PHD_student 
on student.SNO=PHD_student.SNO;

select * 
from student 
inner join PHD_student 
on student.SNO=PHD_student.SNO;

-- join 2 table
select * 
from student 
inner join PHD_student 
on student.SNO=PHD_student.SNO;

-- join 3 table
-- syntax select coulumn_names from table_name1 JOIN table_name2 ON 1.key=2.key JOIN table_name3 ON 1.key/2.key=3.key where 1.key is NULL OR 2.key is NULL
use suba;
select min(E.salary) minimum_dep_salary ,max(E.salary) maximum_dep_salary,E.department_id, sum(E.salary), count(E.department_id),D.location_id,L.city 
from employees E 
join departments D on E.department_id=D.department_id 
join locations L on L.location_id=D.location_id 
group by department_id;


-- SELF JOIN epmloyee and their manager
select E.employee_id,E.first_name,E.manager_id,M.first_name as manager
from employees as E JOIN employees as M
where E.manager_id=M.employee_id;

-- Alias AS, without AS also ll work

select E.employee_id,E.first_name,E.manager_id,M.first_name  manager
from employees  E JOIN employees  M
where E.manager_id=M.employee_id;

SELECT e.employee_id, e.hire_date, j.job_title
FROM employees AS e, jobs AS j
WHERE e.employee_id=206 AND e.job_id=j.job_id;

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;
use suba;
select * from PHD_student ;
select * from student ;