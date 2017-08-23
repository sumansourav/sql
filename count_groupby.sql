# Count and group by
select count(title)
from film
where rental_rate=0.99
;

# combine both count and group by
select title, rental_rate
from film
group by rental_rate
;

# alternative way to achieve same thing
select title, rental_rate
from film
group by 2 # Means group by second column, which is nothing but rental_rate again
;