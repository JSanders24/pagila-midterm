/*
 * You love the acting in the movie 'AMERICAN CIRCUS' and want to watch other movies with the same actors.
 *
 * Write a SQL query SELECT query that:
 * Lists the title of all movies where at least 2 actors were also in 'AMERICAN CIRCUS'.
 * (You may choose to either include or exclude the movie 'AMERICAN CIRCUS' in the results.)
 */
SELECT f1.title
FROM film f1
JOIN film_actor a1 ON f1.film_id = a.film_id
JOIN film_actor a2 ON a2.actor_id = a.actor_id
JOIN film f2 ON f2.film_id = a2.film_id
WHERE f2.title = 'AMERICAN CIRCUS'
 AND f1.title != 'AMERICAN CIRCUS'
GROUP BY f1.title
HAVING
   count(*)>2
ORDER BY f1.title;
