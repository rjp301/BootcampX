SELECT day,count(*) AS total_assignments
FROM assignment
GROUP BY day
HAVING count(*) >= 10
ORDER BY day
