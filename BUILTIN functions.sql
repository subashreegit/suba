-- BUILTIN functions
-- upper lower length
use suba;

select * from employees where length(first_name)=4;
select upper(last_name) from employees where length(first_name)=4;