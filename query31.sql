/* Find the top 3 customers who have ordered the most products*/

select c.customer_id , c.company_name , count(*) as orders 
from customers as c 
join orders as o on c.customer_id = o.customer_id 
join order_details as od on o.order_id = od.order_id 
group by c.customer_id
order by orders desc
limit 3
