SELECT avg(total_duration)
FROM (SELECT
  cohort.name AS name,
  sum(completed_at - started_at) AS total_duration
FROM assistance_request
  JOIN student ON student.id = student_id
  JOIN cohort ON cohort.id = student.cohort_id
GROUP BY cohort.id
ORDER BY total_duration) AS foo