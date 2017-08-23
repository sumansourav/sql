# which month gave the most number of rentals
select left(rental.rental_date,7) as "Month",count(rental.rental_id) as "No. of Rentals"
from rental
group by 1
order by 2 desc
;