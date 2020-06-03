------- Question 1 Answer --------
SELECT name, continent, population 
FROM world

------- Question 2 Answer --------
SELECT name 
FROM world
WHERE population > 200000000

------- Question 3 Answer --------
SELECT name, gdp/population 
FROM world
WHERE population > 200000000

------- Question 4 Answer --------
SELECT name, population/1000000 
FROM world
WHERE continent = 'South America'

------- Question 5 Answer --------
SELECT name, population 
FROM world
WHERE name 
IN ('France', 'Germany', 'Italy');

------- Question 6 Answer --------
SELECT name 
FROM world
WHERE name 
LIKE '%United%';

------- Question 7 Answer --------
SELECT name, population, area 
FROM world
WHERE area > 3000000 
OR population > 250000000;

------- Question 8 Answer --------
SELECT name, population, area
FROM world
WHERE (area < 3000000 AND population > 250000000)
OR (area > 3000000 AND population < 250000000);

------- Question 9 Answer --------
SELECT name, ROUND(population/1000000,2), ROUND(gdp/1000000000,2)
FROM world
WHERE continent = 'South America'

------- Question 10 Answer --------
SELECT name, ROUND(gdp/population, -3)
FROM world
WHERE gdp >= 1000000000000;

------- Question 11 Answer --------
SELECT name, capital
FROM world
WHERE LENGTH(name) = LENGTH(capital)

------- Question 12 Answer --------
SELECT name, capital
FROM world
WHERE LEFT(name, 1) = LEFT(capital, 1)
AND name <> capital

------- Question 13 Answer --------
SELECT name
FROM world
WHERE name LIKE '%a%'
AND name LIKE '%e%'
AND name LIKE '%i%'
AND name LIKE '%o%'
AND name LIKE '%u%'
AND name NOT LIKE '% %'

