/*Find the customers who have not placed any orders*/
select c.company_name 
from customers as c , orders as o 
where c.customer_id  not in ( select o.customer_id from orders);