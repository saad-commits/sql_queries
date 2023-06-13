/*Find the products that have never been ordered */
select p.product_name
from products as p 
left join order_details as od 
on p.product_id = od.product_id
where p.product_id not in ( select od.product_id from order_details)
;
/*not exists( select p.product_id where p.product_id = od.product_id)*/