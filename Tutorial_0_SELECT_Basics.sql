------- Question 1 Answer --------
SELECT population FROM world
WHERE name = 'Germany';

------- Question 2 Answer --------
SELECT name, population FROM world
WHERE name IN ('Sweden', 'Norway', 'Denmark');

------- Question 3 Answer --------
SELECT name, area FROM world
WHERE area BETWEEN 200000 AND 250000;