------- Question 1 Answer --------
SELECT matchid, player
FROM goal
WHERE teamid = 'GER';

------- Question 2 Answer --------
SELECT id, stadium, team1, team2
FROM game
WHERE id = 1012

------- Question 3 Answer --------
SELECT goal.player, goal.teamid, game.stadium, game.mdate
FROM game
INNER JOIN goal
ON (game.id=goal.matchid)
WHERE goal.teamid = 'GER'

------- Question 4 Answer --------
SELECT game.team1, game.team2, goal.player
FROM game
INNER JOIN goal
ON game.id = goal.matchid
WHERE goal.player
LIKE 'Mario%'

------- Question 5 Answer --------
SELECT goal.player, goal.teamid, eteam.coach, goal.gtime
FROM goal
INNER JOIN eteam
ON goal.teamid = eteam.id
WHERE gtime <= 10

------- Question 6 Answer --------
SELECT game.mdate, eteam.teamname
FROM game
INNER JOIN eteam
ON eteam.id = game.team1
WHERE eteam.coach = 'Fernando Santos'

------- Question 7 Answer --------
SELECT goal.player
FROM goal
INNER JOIN game
ON goal.matchid = game.id
WHERE game.stadium = 'National Stadium, Warsaw'

------- Question 8 Answer --------
SELECT DISTINCT goal.player
FROM game
INNER JOIN goal
ON goal.matchid = game.id
WHERE (game.team1 = 'GER' OR game.team2 = 'GER')
AND goal.teamid != 'GER'

------- Question 9 Answer --------
SELECT eteam.teamname, COUNT(goal.player)
AS goals
FROM eteam
INNER JOIN goal
ON eteam.id = goal.teamid
GROUP BY eteam.teamname

------- Question 10 Answer --------
SELECT game.stadium, COUNT(goal.player) AS goals
FROM game
INNER JOIN goal
ON goal.matchid = game.id
GROUP BY game.stadium

------- Question 11 Answer --------
SELECT goal.matchid, game.mdate, COUNT(goal.player) AS goals
FROM game
INNER JOIN goal
ON goal.matchid = game.id
WHERE game.team1 = 'POL'
OR game.team2  = 'POL'
GROUP BY goal.matchid, game.mdate

------- Question 12 Answer --------
SELECT goal.matchid, game.mdate, COUNT(goal.player) AS goals
FROM game
INNER JOIN goal
ON goal.matchid = game.id
WHERE goal.teamid = 'GER'
GROUP BY goal.matchid, game.mdate