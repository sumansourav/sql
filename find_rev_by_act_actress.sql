DROP temporary TABLE IF EXISTS
create temporary table rev_per_film
select f.film_id as film_id, f.rental_rate*count(r.rental_id) as film_rev
from rental r, inventory i, film f
where r.inventory_id = i.inventory_id
	and i.film_id = f.film_id
group by 1
;

# Actor to fillm revenue
select a.actor_id, concat(a.first_name, a.last_name), sum(rpf.film_rev)
from rev_per_film rpf, actor a, film_actor fa
where a.actor_id = fa.actor_id
	and fa.film_id = rpf.film_id
group by 1
;