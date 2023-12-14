-- Add new actor into table actors with name JHONNY DAVIS.
INSERT INTO actor(first_name, last_name)
VALUES ("JHONNY", "DAVIS");

-- There are several new actor to add. Add new actor into table actors
-- with name ADAM DAVIS, JEREMY DAVIS, CRAIG DAVIS, STEVE DAVIS in a single query.
INSERT INTO actor(first_name, last_name)
VALUES
	("ADAM", "DAVIS"),
	("JEREMY", "DAVIS"),
	("CRAIG", "DAVIS"),
	("STEVE", "DAVIS");

-- Count how many actors with last name DAVIS.
SELECT COUNT(actor_id) AS actors FROM actor WHERE last_name = "DAVIS";

-- Delete actor with last name DAVIS and first name JENNIFER.
DELETE FROM actor
WHERE last_name = "DAVIS" AND first_name = "STEVE";

-- Update actor with last name DAVIS and change his/her first name into GEORGE
UPDATE actor
SET first_name = "GEORGE"
WHERE last_name = "DAVIS";

-- Find top 10 actor with the most perform on film.
-- kalau query yg bawah error kena only_full_group_by setelah di group by a.actor_id,
-- jalanin dulu query ini
SET SESSION sql_mode = 'STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

SELECT a.first_name, a.last_name, COUNT(fa.film_id) AS films FROM actor a
INNER JOIN film_actor fa
ON a.actor_id = fa.actor_id
GROUP BY a.actor_id
ORDER BY films DESC
LIMIT 10;

-- Display title, description, length, and rating from film, where special features include deleted scenes and behind the scenes order by most length
SELECT title, description, length, rating FROM film
WHERE special_features LIKE '%Deleted Scenes%'
AND special_features LIKE '%Behind the Scenes%';

-- Display country and total of inactive customer (active = 0) from country
-- where customer active = 0 order by the highest inactive (active = 0) customer
SELECT c.country, COUNT(cus.customer_id) AS customers FROM country c
INNER JOIN city ct ON c.country_id = ct.country_id
INNER JOIN address a ON ct.city_id = a.city_id
INNER JOIN customer cus ON a.address_id = cus.address_id
WHERE cus.active = 0
GROUP BY c.country
ORDER BY customers DESC;
