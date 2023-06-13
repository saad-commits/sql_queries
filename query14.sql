/* 14. Find the most expensive product in each category */
select c.category_name , p .product_name
from categories as c 
left join products as p 
on c.category_id = p.category_id 
where p.unit_price = (select max(unit_price) from products where category_id=p.category_id )
;