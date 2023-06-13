/* Find the customer who has ordered the most ‘Chai’ product*/

select c.company_name ,sum(od.quantity) as orders_quantity
from customers as c 
left join orders as o on c.customer_id = o.customer_id
join order_details as od on o.order_id= od.order_id
join products as p on od.product_id=p.product_id 
where p.product_name='Chai'
group by company_name
order by orders_quantity desc
limit 1
;