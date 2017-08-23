# Revenue per video title
# Revenue = price * number of rentals

select film.title as title,count(rental.rental_id),film.rental_rate*count(rental.rental_id) as revenue
from film, inventory , rental
where film.film_id = inventory.film_id and inventory.inventory_id = rental.inventory_id
group by film.title
order by revenue desc
;