/* Find the employees who have not processed any orders */

select e.employee_id , e.first_name || ' ' || e.last_name as full_name
from employees as e 
join orders as o on e.employee_id = o.employee_id
where e.employee_id not in (select o.employee_id from orders) 