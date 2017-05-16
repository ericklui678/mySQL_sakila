-- 1) Run query to get all customers inside city_id = 312. Return customer first name, last name, email, address
-- SELECT customer.first_name, customer.last_name, customer.email, address.address, address.city_id
-- FROM customer
-- LEFT JOIN address
-- ON customer.address_id = address.address_id
-- WHERE address.city_id = 312

-- 2) Run query to get all comedy films. Return film title, description, release year, rating, special features, and genre (category)
-- SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name AS category
-- FROM film
-- LEFT JOIN film_category
-- ON film.film_id = film_category.film_id
-- LEFT JOIN category
-- ON film_category.category_id = category.category_id
-- WHERE category.name LIKE 'Co%'

-- 3) Run query to get all the films joined by actor_id = 5. Return actor id, actor name, film title, description, and release year
-- SELECT actor.actor_id, CONCAT_WS(' ',actor.first_name, actor.last_name), film.film_id, film.title, film.description, film.release_year
-- FROM film
-- LEFT JOIN film_actor
-- ON film.film_id = film_actor.film_id
-- LEFT JOIN actor
-- ON film_actor.actor_id = actor.actor_id
-- WHERE actor.actor_id = 5

-- 4) Run query to get all customers in store_id = 1 and inside cities (1, 42, 312, 459). Return customer first name, last name, email, address
-- SELECT customer.store_id, customer.first_name, customer.last_name, customer.email, address.address
-- FROM customer
-- LEFT JOIN address
-- ON customer.address_id = address.address_id
-- WHERE customer.store_id = 1 AND (address.city_id = 1 OR address.city_id = 42 OR address.city_id = 312 OR address.city_id = 459)

-- 5) Run query to get all films with 'ratings = G' and 'special feature = behind the scenes', joined by actor_id = 15. Return film title, descr, release year, rating, special feature
-- SELECT film.title, film.description, film.release_year, film.rating, film.special_features
-- FROM film
-- LEFT JOIN film_actor
-- ON film.film_id = film_actor.film_id
-- WHERE film.rating = 'G' AND film.special_features LIKE '%Behind%'  AND film_actor.actor_id = 15

-- 6) Run query to get all actors that joined in film_id 369. Return film_id, title, actor_id, and actor_name
-- SELECT film.film_id, film.title, actor.actor_id, actor.first_name, actor.last_name
-- FROM actor
-- LEFT JOIN film_actor
-- ON actor.actor_id = film_actor.actor_id
-- LEFT JOIN film
-- ON film_actor.film_id = film.film_id
-- WHERE film.film_id = 369

-- 7)Run query to get all drama films with rental rate of 2.99. Return film title, desc, release year, rating, special features, and genre
-- SELECT film.title, film.description, film.release_year, film.special_features, category.name
-- FROM film
-- LEFT JOIN film_category
-- ON film.film_id = film_category.film_id
-- LEFT JOIN category
-- ON film_category.category_id = category.category_id
-- WHERE film.rental_rate = 2.99 AND category.name LIKE 'dr%'

-- 8) Run query to get all action films which are joined by SANDRA KILMER. Return film title, desc, release year, rating special features, genre, and actor's first name and last name
-- SELECT actor.actor_id, film.title, film.description, film.release_year, film.rating, film.special_features, actor.first_name, actor.last_name, category.name
-- FROM film
-- LEFT JOIN film_category
-- ON film.film_id = film_category.film_id
-- LEFT JOIN category
-- ON film_category.category_id = category.category_id
-- LEFT JOIN film_actor
-- ON film.film_id = film_actor.film_id
-- LEFT JOIN actor
-- ON film_actor.actor_id = actor.actor_id
-- WHERE actor.last_name = 'KILMER' AND actor.first_name = 'SANDRA' AND category.name LIKE 'ac%'