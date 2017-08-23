# Most rented movie
select film.title, count(rental.rental_id)
from film, inventory , rental
where film.film_id = inventory.film_id and inventory.inventory_id = rental.inventory_id
group by film.title
;