/* Get the total number of orders placed by each customer*/

Select c.contact_name , Sum(od.quantity)
from customers as c , order_details as od , orders as o 
where od.order_id = o.order_id and
o.customer_id = c.customer_id
group by c.contact_name ;
