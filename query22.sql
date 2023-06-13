/* Get the employees who have processed orders for ‘Chai’ product*/

select distinct e.employee_id ,e.first_name || ' ' || e.last_name as full_name
from employees as e 
join orders as o on e.employee_id = o.employee_id
join order_details as od on o.order_id = od.order_id
join products as p on od.product_id = p.product_id 
where p.product_name='Chai';