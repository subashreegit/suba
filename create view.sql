use suba;
select * from employees;
-- create view
create view employee_view as select first_name, last_name,job_id from employees;
-- create index
create INDEX INDEX_employee_ID ON employees (first_name); 
-- delete INDEX
drop INDEX INDEX_employee_ID ON employees;
