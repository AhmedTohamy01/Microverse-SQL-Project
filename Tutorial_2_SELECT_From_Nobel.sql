------- Question 1 Answer --------
SELECT yr, subject, winner
FROM nobel
WHERE yr = 1950;

------- Question 2 Answer --------
SELECT winner
FROM nobel
WHERE yr = 1962
AND subject = 'Literature';

------- Question 3 Answer --------
SELECT yr, subject
FROM nobel
WHERE winner = 'Albert Einstein';

------- Question 4 Answer --------
SELECT winner
FROM nobel
WHERE subject = 'Peace'
AND yr >= 2000;

------- Question 5 Answer --------
SELECT *
FROM nobel
WHERE subject = 'Literature'
AND yr BETWEEN 1980 AND 1989;

------- Question 6 Answer --------
SELECT * 
FROM nobel
WHERE winner 
IN (
'Theodore Roosevelt',
'Woodrow Wilson',
'Jimmy Carter',
'Barack Obama');

------- Question 7 Answer --------
SELECT WINNER 
FROM nobel
WHERE winner 
LIKE 'John%';

------- Question 8 Answer --------
SELECT * FROM nobel
WHERE (subject = 'Physics' AND yr = 1980)
OR (subject = 'Chemistry' AND yr = 1984);

------- Question 9 Answer --------
SELECT * FROM nobel
WHERE yr = 1980
AND subject NOT IN ('Chemistry', 'Medicine');

------- Question 10 Answer --------
SELECT * FROM nobel
WHERE (subject = 'Medicine' AND yr < 1910)
OR (subject = 'Literature' AND yr >= 2004);

------- Question 11 Answer --------
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';

------- Question 12 Answer --------
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';

------- Question 13 Answer --------
SELECT *
FROM nobel
WHERE winner LIKE 'sir%'
ORDER BY yr DESC, winner;

------- Question 14 Answer --------
SELECT winner, subject
FROM nobel
WHERE yr = 1984
ORDER BY
CASE WHEN SUBJECT IN ('Physics', 'Chemistry') THEN 1 ELSE 0
END, 
subject, winner;