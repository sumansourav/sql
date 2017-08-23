# give all combinations of film name, category and language of that film

select film.title,category.name,language.name
from film, film_category,language, category
where film.language_id = language.language_id and film.film_id = film_category.film_id and category.category_id = film_category.category_id
;