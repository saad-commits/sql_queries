/*Find the customers who have spent more than $5000 in total*/
select c.company_name ,sum((od.quantity*p.unit_price)*(1-od.discount)) as total_spendings
from customers as c 
join orders as o 
on c.customer_id = o.customer_id
join order_details as od 
on o.order_id = od.order_id 
join products as p 
on od.product_id = p.product_id 
group by c.company_name
having total_spendings>5000;