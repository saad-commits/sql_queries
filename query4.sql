/* Find the total sales (Quantity*Unit_Price) for each category of products */

Select   c.category_name ,round(sum(od.quantity*od.unit_price))
From products as p , order_details as od , categories as c
where od.product_id= p.product_id 
and p.category_id =c.category_id
group by category_name
;
