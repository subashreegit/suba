use suba;
SELECT e.employee_id, e.hire_date, j.job_title
FROM employees AS e, jobs AS j;

SELECT e.employee_id, e.hire_date, j.job_title
FROM employees AS e, jobs AS j
WHERE e.employee_id=206 AND e.job_id=j.job_id;

SELECT CustomerName, Address + ', ' + PostalCode + ' ' + City + ', ' + Country AS Address
FROM Customers;

select * from employees;
-- SELF JOIN epmloyee and their manager
select E.employee_id,E.first_name,E.manager_id,M.first_name as manager
from employees E JOIN employees M
where E.manager_id=M.employee_id;
