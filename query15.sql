/*Find the total revenue for the year 2016*/
select o.order_date , sum(( od.quantity*p.unit_price*(1-od.discount))) as total_revenue
from order_details as od , orders as o , products as p 
where o.order_id = od.order_id
and od.product_id = p.product_id
and year(o.order_date)=2016
;