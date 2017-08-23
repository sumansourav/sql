# Which store has historically brought in the most revenue
select inventory.store_id as "STORE ID",sum(payment.amount) as "Revenue"
from inventory,payment,rental
where payment.rental_id = rental.rental_id and inventory.inventory_id = rental.inventory_id
group by inventory.store_id
order by revenue desc
;