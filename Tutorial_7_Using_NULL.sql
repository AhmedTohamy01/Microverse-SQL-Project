------- Question 1 Answer --------
SELECT name
FROM teacher
WHERE dept IS NULL

------- Question 2 Answer --------
SELECT teacher.name, dept.name
FROM teacher
INNER JOIN dept
ON (teacher.dept=dept.id)

------- Question 3 Answer --------
SELECT teacher.name, dept.name
FROM teacher
LEFT JOIN dept
ON (teacher.dept = dept.id)

------- Question 4 Answer --------
SELECT teacher.name, dept.name
FROM teacher
RIGHT JOIN dept
ON (teacher.dept = dept.id)

------- Question 5 Answer --------
SELECT name, COALESCE(mobile, '07986 444 2266') AS contact
FROM teacher

------- Question 6 Answer --------
SELECT teacher.name, COALESCE(dept.name, 'None') AS contact
FROM teacher
LEFT JOIN dept
ON teacher.dept = dept.id

------- Question 7 Answer --------
SELECT COUNT(name) AS teachers, COUNT(mobile) AS mobiles
FROM teacher

------- Question 8 Answer --------
SELECT dept.name, COUNT(teacher.name) AS teachers
FROM teacher
RIGHT JOIN dept
ON teacher.dept = dept.id
GROUP BY dept.name

------- Question 9 Answer --------
SELECT teacher.name, CASE WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci' ELSE 'Art' END
FROM teacher
LEFT JOIN dept
ON teacher.dept = dept.id

------- Question 10 Answer --------
--Question 10
SELECT teacher.name, CASE WHEN teacher.dept = 1 OR teacher.dept = 2 THEN 'Sci' WHEN teacher.dept = 3 THEN 'Art' ELSE 'None' END
FROM teacher
LEFT JOIN dept
ON teacher.dept = dept.id