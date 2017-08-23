# How many distinct renters per month?

SELECT left(r.rental_date, 7) as month, count(r.rental_id) as total_rentals,
          count(distinct r.customer_id) as unique_renters,
          count(r.rental_id)/count(distinct r.customer_id) as avg_num_rental_per_renter
from rental r
group by 1
;