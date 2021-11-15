-- where --> group by--> having -->order by
-- syntax select coulumn_names from table_name where condition gropu by coulumn_names having condition order by coulumn_names
-- group by
select * from employees;
select job_id,department_id,count(*) nr_of_employee from employees group by department_id,job_id;
select job_id,department_id,count(*) nr_of_employee from employees group by department_id;
-- group by with condition ( having clause comes after group by )(where clause comes before the group by)
select job_id,department_id,count(*) nr_of_employee from employees group by department_id having count(*)>20;
select job_id,department_id,count(*) nr_of_employee from employees where department_id<>80 group by department_id having count(*)>20;


select sum(salary) from employees;
select min(salary) minimum_dep_salary ,max(salary) maximum_dep_salary,department_id, sum(salary), count(department_id) from employees group by department_id;
select min(salary) minimum_job_salary ,max(salary) maximum_job_salary, job_id,sum(salary), count(job_id) from employees group by job_id;
select * from employees group by department_id;
select employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary, department_id from employees group by job_id;
select department_id, sum(salary) from employees group by department_id;
select job_id, max(salary) from employees group by department_id;
select job_id, min(salary),department_id from employees group by department_id;

select E.employee_id,E.first_name,E.manager_id,M.first_name as manager,min(E.salary)
from employees as E JOIN employees as M
where E.manager_id=M.employee_id;

-- self join
select E.employee_id,E.first_name,E.manager_id,M.first_name as manager,min(E.salary)
from employees as E JOIN employees as M
where E.manager_id=M.employee_id group by E.department_id;
-- Three  3 table join with group by
select min(E.salary) minimum_dep_salary ,max(E.salary) maximum_dep_salary,E.department_id, sum(E.salary), count(E.department_id),D.location_id,L.city from employees E join departments D on E.department_id=D.department_id join locations L on L.location_id=D.location_id group by department_id;


select * from employees group by department_id;

-- order by
select * from employees order by job_id;
select * from employees order by job_id desc;
select * from employees order by hire_date;

-- where --> group by--> having -->order by
-- syntax select coulumn_names from table_name where condition gropu by coulumn_names having condition order by coulumn_names
select sum(salary),department_id from employees where department_id<>80 group by department_id having sum(salary)> 50000 order by department_id;
