/* Find the order with the highest total cost*/

select o.order_id ,max((od.quantity*p.unit_price)*(1-od.discount)) as total_price
from orders as o 
join order_details as od 
on o.order_id=od.order_id
join products as p 
on od.product_id = p.product_id
