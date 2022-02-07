SELECT day,count(*) AS total_assignments
FROM assignment
GROUP BY day
ORDER BY day