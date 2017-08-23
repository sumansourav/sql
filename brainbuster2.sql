# Which rating has the most movie?

select rating,count(film_id)
from film
group by rating
;

# Overchiever's problem
# Which rating is most prevalent in each price?
select rating,rental_rate, count(film_id)
from film
group by rental_rate,rating
;