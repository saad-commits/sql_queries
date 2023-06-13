/*Find the month in the year 2016 with the highest total sales */ 

select month(o.order_date) as month , sum((od.quantity*p.unit_price)*(1-od.discount)) as total_sales
from orders as o 
join order_details as od 
on o.order_id = od.order_id
join products as p 
on od.product_id = p.product_id
where year(o.order_date) = 2016
group by month(o.order_date)
order by total_sales desc
limit 1; 
