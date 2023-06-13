/* Find all suppliers who provide products in the ‘Seafood’ category*/

select s.company_name 
from suppliers as s , products as p , categories as c 
where c.category_id = p.category_id
and p.supplier_id = s.supplier_id
and c.category_name="Seafood"
;
