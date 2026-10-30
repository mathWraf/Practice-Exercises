USE sakila;

-- Count how many films belong to the action category
SELECT COUNT(*)
FROM film f
JOIN film_category fc 
ON f.film_id = fc.film_id
JOIN category c 
ON fc.category_id = c.category_id
WHERE c.name = "Action";

-- Find the total amount of rentals
SELECT SUM(amount)
FROM payment;

-- Calculate the total payment  per customer
SELECT customer_id, SUM(amount) 
FROM payment
GROUP BY customer_id;

-- Calculate average and total payment
SELECT AVG(amount), SUM(amount) 
FROM payment;

-- calculate the average film length
SELECT AVG(length) 
FROM film;

-- round the average amount to 2 decimal places
SELECT ROUND(AVG(amount), 2) 
FROM payment;

-- the average amount per customer
SELECT customer_id, AVG(amount) 
FROM payment
GROUP BY customer_id;

-- find the earliest year a film has been released
SELECT MIN(release_year) 
FROM film;

-- find the smallest rental rate for each category
SELECT category_id, MIN(rental_rate)
FROM film, film_category
GROUP BY category_id;

-- find the highest payment
SELECT MAX(amount) 
FROM payment;

-- find the highest payment per customer
SELECT customer_id, MAX(amount) 
FROM payment
GROUP BY customer_id;

-- find the total rental amount per customers
SELECT customer_id, COUNT(*) AS rental_count
FROM rental
GROUP BY customer_id;

-- find the total rental amount per customers, and list in descending order
SELECT customer_id, COUNT(*) AS rental_count
FROM rental
GROUP BY customer_id
ORDER BY rental_count DESC;

-- total rental amount per customer, then by film.
SELECT r.customer_id, i.film_id, COUNT(*) AS rental_count
FROM rental r
JOIN inventory i ON r.inventory_id = i.inventory_id
GROUP BY r.customer_id, i.film_id;

-- returns customers who spent over 100
SELECT customer_id, SUM(amount) AS total_spent
FROM payment
GROUP BY customer_id
HAVING total_spent > 100;

-- returns customers who rented more than 5 films
SELECT customer_id, COUNT(*) AS rental_count
FROM rental
GROUP BY customer_id
HAVING rental_count > 5;

-- return customers who rented more than 5 films and spent more than 100
SELECT r.customer_id, COUNT(*) AS rental_count, SUM(p.amount) AS total_spent
FROM rental r
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY r.customer_id
HAVING rental_count > 5 AND total_spent > 100;