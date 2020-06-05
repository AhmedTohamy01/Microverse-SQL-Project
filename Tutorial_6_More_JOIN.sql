------- Question 1 Answer --------
SELECT id, title
FROM movie
WHERE yr = 1962;

------- Question 2 Answer --------
SELECT yr
FROM movie
WHERE title = 'Citizen Kane';


------- Question 3 Answer --------
SELECT id, title, yr
FROM movie
WHERE title LIKE '%Star Trek%';
ORDER BY yr

------- Question 4 Answer --------
SELECT id
FROM actor
WHERE name = 'Glenn Close';

------- Question 5 Answer --------
SELECT id
FROM movie
WHERE title = 'Casablanca';

------- Question 6 Answer --------
SELECT name
FROM actor JOIN casting ON id = casting.actorid JOIN movie ON movieid = 11768
WHERE title = 'Casablanca';

------- Question 7 Answer --------
SELECT name
FROM actor
JOIN casting ON id = casting.actorid
JOIN movie ON movieid = movie.id
WHERE title = 'Alien';

------- Question 8 Answer --------
SELECT title
FROM movie
JOIN casting ON id = casting.movieid
JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford';

------- Question 9 Answer --------
SELECT title
FROM movie
JOIN casting ON id = casting.movieid
JOIN actor ON actorid = actor.id
WHERE name = 'Harrison Ford' AND casting.ord <> 1;

------- Question 10 Answer --------
SELECT title, name
FROM movie
JOIN casting
ON id = casting.movieid
JOIN actor
ON actorid = actor.id
WHERE ord = 1 AND yr = 1962;

------- Question 11 Answer --------
SELECT yr, COUNT(title)
FROM
movie JOIN casting ON movie.id=movieid
JOIN actor ON actorid=actor.id
WHERE name='Rock Hudson'
GROUP BY yr
HAVING COUNT(title) > 2;

------- Question 12 Answer --------
SELECT title, name
FROM movie
JOIN casting ON movie.id = movieid
JOIN actor ON actorid = actor.id
WHERE movie.id IN (SELECT casting.movieid FROM casting WHERE actorid = (SELECT id FROM actor WHERE name = 'Julie Andrews'))
AND ord = 1;

------- Question 13 Answer --------
SELECT name
FROM actor
JOIN casting ON id = casting.actorid
WHERE ord = 1
GROUP BY name
HAVING COUNT(name) >= 15
ORDER BY name;

------- Question 14 Answer --------
SELECT title, COUNT(name)
FROM movie
JOIN casting ON id = casting.movieid
JOIN actor ON actorid = actor.id
WHERE  movie.yr = 1978
GROUP BY title
ORDER BY COUNT(actor.name) DESC, movie.title;

------- Question 15 Answer --------
SELECT name
FROM actor
JOIN casting ON id = casting.actorid
WHERE movieid IN (SELECT movieid FROM casting WHERE actorid = (SELECT id FROM actor WHERE name = 'Art Garfunkel'))
AND name <> 'Art Garfunkel';
