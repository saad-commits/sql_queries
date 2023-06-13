/* List all ‘Orders’ with ‘Customer’ details and ‘Employee’ who processed it*/
Select o.order_id , c.company_name , e.first_name || ' ' || e.last_name as fullname 
from orders as o , customers as c ,employees as e 
where o.customer_id=c.customer_id and o.employee_id = e.employee_id;