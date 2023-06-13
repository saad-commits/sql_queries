/* Find the employees who have processed more than 100 orders */

select e.employee_id , e.first_name || ' ' || e.last_name as full_name , count(o.order_id) as no_of_orders
from employees as e , orders as o 
where e.employee_id = o.employee_id
group by e.employee_id
having no_of_orders > 100;

