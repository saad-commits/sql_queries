/* Classify products based on their sales volume such 
that TotalQuantity > 1000 Then SalesCategory as ‘High Sales’.
If TotalQuantity>500 Then ‘Medium Sales’ and else ‘Lower Sales’ */

select p.product_id , p.product_name  , od.quantity as sales , 
 case 
    when  od.quantity > 50 Then 'High sales'
	when  od.quantity > 25 And od.quantity <50 then 'Medium sales'
    else 'Lower sales'
    end as SalesCategory
from products as p 
join order_details as od on p.product_id = od.product_id