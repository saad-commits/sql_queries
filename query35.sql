/*Find the total sales for each year*/

select year(o.order_date) , sum((od.quantity*p.unit_price)*(1-od.discount)) as totalsales
from orders as o 
join order_details as od on o.order_id = od.order_id
join products as p on od.product_id = p.product_id
group by year(o.order_date);