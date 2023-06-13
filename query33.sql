/*Get the top 5 most sold products*/

select p.product_name,sum(o.quantity) as number_of_sold_products , s.company_name
from products as p  
join order_details as o 
on p.product_id=o.product_id 
join suppliers as s on p.supplier_id = s.supplier_id
group by p.product_name 
order by number_of_sold_products desc
limit 5;
