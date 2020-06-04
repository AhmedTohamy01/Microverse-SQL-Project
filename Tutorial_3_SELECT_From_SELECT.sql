------- Question 1 Answer --------
SELECT name FROM world
WHERE population > (SELECT population FROM world WHERE name='Russia');

------- Question 2 Answer --------
SELECT name FROM world
WHERE continent = 'Europe'
AND gdp/population > (SELECT gdp/population FROM world WHERE name = 'United Kingdom');

------- Question 3 Answer --------
SELECT name, continent
FROM world
WHERE continent = (SELECT continent FROM world WHERE name = 'Argentina')
OR continent = (SELECT continent FROM world WHERE name ='Australia')
ORDER BY name;

------- Question 4 Answer --------
SELECT name, population
FROM world
WHERE population > (SELECT population FROM world WHERE name = 'Canada')
AND population < (SELECT population FROM world WHERE name = 'Poland');

------- Question 5 Answer --------
SELECT name,
       CONCAT(CAST(ROUND(population * 100 / (SELECT population FROM world WHERE name = 'germany'), 0) AS int), '%') AS percentage
FROM world
WHERE continent = 'Europe'
