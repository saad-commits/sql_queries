/* Find the average quantity of products ordered in each order */

select od.order_id , avg(od.quantity) as avg_quantity
from order_details as od 
group by od.order_id 