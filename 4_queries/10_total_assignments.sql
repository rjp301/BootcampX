SELECT
  day,
  count(*),
  sum(duration)
FROM assignment
GROUP BY day
ORDER BY day