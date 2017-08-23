# COnnecting tables

select customer.customer_id, customer.first_name, customer.last_name, address.address
from customer, address
where customer.address_id=address.address_id
;