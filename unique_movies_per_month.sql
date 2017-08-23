# Distinct movies rented each month
select left(r.rental_date,7) as month, count(r.rental_id) as total_rentals,
            count(distinct i.film_id) as unique_films_rented, count(r.rental_id)/count(distinct i.film_id) as rentals_per_films
from rental r, inventory i
where r.inventory_id = i.inventory_id
group by 1
;
