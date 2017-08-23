# Which customer has paid us the most money?
select customer.first_name,customer.last_name, payment.amount
from customer,payment
where customer.customer_id=payment.customer_id
group by customer.customer_id
order by amount desc
;

# As per the video lesson
select customer.customer_id, SUM(payment.amount)
from payment,customer
group by customer.customer_id
order by 2 desc
;