# number of rentals in Comedy, Sports and Family
select c.name as category, count(r.rental_id) as num_rentals
from rental r, inventory i, film f, film_category fc, category c
where r.inventory_id = i.inventory_id
	AND i.film_id = f.film_id
	AND f.film_id = fc.film_id
	AND fc.category_id = c.category_id
	AND c.name in ("Comedy", "Sports", "Family")
group by 1
;

#comparison operator (>, =, <)

# Users who have rented atleast 3 times
select r.customer_id, count(r.rental_id) as rental_num
from rental r
group by 1
having count(r.rental_id) >= 3 
;