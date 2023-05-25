use sakila;

-- 1. Get film ratings
select distinct rating
from film;

-- 2. Get release years.
select distinct release_year
from film;

-- 3. Get all films with ARMAGEDDON in the title.
select title
from film
where title LIKE "%ARMAGEDDON%";

-- 4. Get all films with APOLLO in the title
select title
from film
where title LIKE "%APOLLO%";

-- 5. Get all films which title ends with APOLLO.
select title
FROM film
WHERE title LIKE "%APOLLO";

-- 6. Get all films with word DATE in the title
select *
FROM film
WHERE title like "%DATE%";

-- 7. Get 10 films with the longest title.
select title
FROM film
ORDER BY LENGTH(title) DESC
LIMIT 10;

-- 8. Get 10 the longest films.
select length
FROM film
ORDER BY LENGTH(length) DESC
LIMIT 10;

-- 9. How many films include Behind the Scenes content?
select * 
from film
where special_features 
like "%behind_the_scene%"
order by film_id asc;

-- 10. List films ordered by release year and title in alphabetical order.
select title, release_year
from film
order by release_year, title;