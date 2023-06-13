/* Find the top 3 most popular categories of products ordered */

select c.category_id, c.category_name ,count(*) as count_of_order
from categories as c
join products as p on c.category_id = p.category_id
join order_details as od on p.product_id = od.product_id
group by c.category_id
order by count_of_order desc
limit 3
;