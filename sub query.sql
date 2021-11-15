use suba;
select salary from employees where first_name='Lex';

select salary from employees where salary<='17000.00';

-- sub query
select salary from employees where salary<=(select salary from employees where first_name='Lex');

-- 2nd max salary of employee
select MAX(salary) as max_salary from employees ;
select MAX(salary) as 2max_salary from employees where salary < (select MAX(salary) from employees);
-- 3nd max salary of employee
select max(salary) as 3maxsalary from employees where salary
<(select max(salary) as 2maxsalary from employees where salary
<(select max(salary) from employees));
use suba;
select * from employees;
-- single row output in inner query <>=! employee_id is single
select salary from employees where salary <=(select salary from employees where employee_id=109);

select * from employees where salary =(select max(salary) from employees);

-- multiple row output  in inner query using IN(equals) ALL ANY

select * from employees where salary in (select salary from employees where department_id=60);
select * from employees where salary <any (select salary from employees where department_id=60);
select * from employees where salary >any (select salary from employees where department_id=60);
select * from employees where salary >all (select salary from employees where department_id=60);
select * from employees where salary <all (select salary from employees where department_id=60);
use suba;
select employees.first_name,employees.salary,employees.department_id,departments.department_name from employees join departments ON employees.department_id=departments.department_id;
-- joining 2table using subquery 
select employees.first_name,employees.salary,employees.department_id, (select department_name from departments where employees.department_id=departments.department_id )from employees;
-- with alias AS
select employees.first_name,employees.salary,employees.department_id, (select department_name from departments where employees.department_id=departments.department_id ) as department_name from employees;
select * from employees;

select first_name,salary,hire_date from employees where salary <(select max(salary) from employees) and  hire_date > (select hire_date from employees where salary=(select max(salary) from employees));


select first_name,salary,hire_date from employees 
where 
salary <(select max(salary) from employees) 
and  
hire_date > (select hire_date from employees where salary=(select max(salary) from employees));
