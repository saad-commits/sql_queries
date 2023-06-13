/* Find the employee who processed the most orders in August 2016 */

select e.employee_id , e.first_name || ' ' || e.last_name  as full_name , count(order_id) as orders 
from employees as e 
join orders as o 
on e.employee_id = o.employee_id 
where year(o.order_date) =2016 and month(o.order_date)=08
group by e.employee_id 
order by orders desc
limit 1;

