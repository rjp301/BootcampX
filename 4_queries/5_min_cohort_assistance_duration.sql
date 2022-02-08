SELECT
  cohort.name AS name,
  avg(completed_at - started_at) AS avg_assistance_time
FROM assistance_request
  JOIN student ON student.id = student_id
  JOIN cohort ON student.cohort_id = cohort.id
GROUP BY cohort.id
ORDER BY avg_assistance_time DESC
LIMIT 1;