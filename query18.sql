/* Find all employees who report to ‘Andrew Fuller’*/
select employee_id , first_name || ' ' || last_name  
from employees 
where reports_to = ‘Andrew Fuller’;
/* The above query question is not applicable*/