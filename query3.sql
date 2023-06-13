/* Get the total quantity of each product sold*/

Select  p.product_name ,sum(od.quantity )
From products as p , order_details as od
where od.product_id = p.product_id
group by p.product_name ;
