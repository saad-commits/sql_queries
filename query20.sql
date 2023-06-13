/*. List the top 5 employees who have processed the most orders*/
select e.employee_id ,e.first_name || ' ' || e.last_name as full_name ,count(o.order_id) as numbers_of_orders
from employees as e
left join orders as o 
where e.employee_id = o.employee_id
group by e.employee_id 
order by numbers_of_orders desc
limit 5;