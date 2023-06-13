/*Find the most common shipping country*/

select c.country , count(o.order_id) as no_of_orders
from customers as c 
join orders as o on c.customer_id = o.customer_id
group by c.country 
order by no_of_orders desc
;