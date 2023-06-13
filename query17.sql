/*List all the distinct countries to which orders have been shipped*/
select distinct country 
from customers 
where country not null