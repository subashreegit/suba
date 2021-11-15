use suba;
select * from employees where hire_date>'1997-06-25' and hire_date<'1997-12-24';
-- 4 ans 5 are same
select * from employees where hire_date<>'1997-06-25';
select * from employees WHERE NOT hire_date='1997-06-25';
select * from employees where hire_date='1997-06-25';
select * from employees WHERE salary BETWEEN 4200 AND 6000;
select count(*) from employees WHERE salary BETWEEN 4200 AND 6000;
select * from employees WHERE salary NOT BETWEEN 4200 AND 60000;
select count(*) from employees WHERE salary NOT BETWEEN 4200 AND 60000;
-- IN (11 and 12 are same)
select * from employees WHERE salary=4200 or salary=4800 or salary=5800 or salary=6000;
select * from employees WHERE salary in (4200,4800,5800,6000);
select * from employees WHERE salary not in (4200,4800,5800,6000);
select * from employees WHERE last_name LIKE 's%';
select * from employees WHERE last_name NOT LIKE 's%';
select * from employees WHERE last_name LIKE 's%h';
select * from employees WHERE last_name LIKE '%s';
select * from employees WHERE first_name LIKE 'a%a';
select * from employees WHERE first_name LIKE 'a%a_';
select * from employees WHERE first_name LIKE '%m%';
-- to show all four letter first name use 4 underscore
select * from employees WHERE first_name LIKE '____';

select * from employees WHERE manager_id is null;
select * from employees WHERE manager_id IS NOT NULL;
-- DISTINCT ll disply unique vaule (no duplication)
select distinct salary from employees;
select distinct COUNT(salary) from employees;
select distinct * from employees;
-- comment: The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
SELECT * FROM employees ORDER BY email;
SELECT * FROM employees ORDER BY last_name,email;
SELECT * FROM employees ORDER BY manager_id, salary DESC;
SELECT * FROM employees ORDER BY manager_id ASC, salary DESC;
-- select TOP 10
SELECT * from employees WHERE salary BETWEEN 4200 AND 600000 LIMIT 10;
-- The MIN() function returns the smallest value of the selected column.
-- The MAX() function returns the largest value of the selected column.
select min(salary) from employees where manager_id=100;
select max(salary) from employees where manager_id=100;
-- SELECT column_name AS alias_name FROM table_name; An alias only exists for the duration of that query.
-- SELECT MIN(Price) AS SmallestPrice FROM Products;
select max(salary) as highest_salary from employees where manager_id=100;
select * from employees where length(last_name)=4;
select * from employees where length(salary)=7;
select concat(first_name, last_name) from employees ; 






