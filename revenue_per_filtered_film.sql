# revenue for store 1 where film is rated R or PG-13
select i.store_id, f.rating, sum(p.amount) as "revenue"
from rental r, inventory i, film f, payment p
where r.inventory_id = i.inventory_id
   and i.film_id = f.film_id
   and p.rental_id = r.rental_id
	and i.store_id = 1
	and f.rating in ("R", "PG-13")
group by 1,2
;

