/* Get the list of customers who have ordered ‘Chai’ product*/

select  company_name 
from customers as c , orders as o , order_details as od , products as p
where c.customer_id = o.customer_id and
	   o.order_id= od.order_id And
       od.product_id=p.product_id
       and p.product_name='Chai';