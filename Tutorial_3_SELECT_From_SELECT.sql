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
SELECT name, CONCAT(CAST(ROUND(population * 100 / (SELECT population FROM world WHERE name = 'germany'), 0) AS int), '%') AS percentage
FROM world
WHERE continent = 'Europe'

------- Question 6 Answer --------
SELECT name
FROM world
WHERE gdp > ALL(SELECT gdp FROM world WHERE gdp > 0 AND continent = 'Europe');

------- Question 7 Answer --------
SELECT continent, name, area
FROM world AS x
WHERE area >= ALL (SELECT area FROM world AS y WHERE y.continent = x.continent AND area > 0);

------- Question 8 Answer --------
SELECT continent, name
FROM world x
WHERE name <= ALL (SELECT name FROM world y WHERE y.continent = x.continent);

------- Question 9 Answer --------
SELECT name, continent, population
FROM world
WHERE continent NOT IN (SELECT DISTINCT continent FROM world WHERE population > 25000000);

------- Question 10 Answer --------
SELECT name, continent
FROM world x
WHERE population > ALL(SELECT population * 3 FROM world y WHERE x.continent = y.continent AND x.name <> y.name);

