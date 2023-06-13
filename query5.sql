/* List the employees and the number of orders each employee has taken*/
select e.first_name , e.last_name , count(o.order_id) as no_of_orders 
from employees as e
left join orders as o
on e.employee_id = o.employee_id
group by e.employee_id ;