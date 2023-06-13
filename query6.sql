/*6. Get the customers who have placed more than 10 orders*/
select c.company_name ,count(o.order_id) as no_of_orders
from customers as c 
join orders as o
on c.customer_id =o.customer_id
group by c.company_name
having count(o.order_id)>10;
