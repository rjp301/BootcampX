SELECT
  teacher.name AS teacher,
  cohort.name AS cohort,
  count(assistance_request) AS total_assists
FROM assistance_request
  JOIN student ON student.id = student_id
  JOIN teacher ON teacher.id = teacher_id
  JOIN cohort ON cohort.id = student.cohort_id
WHERE cohort.name = 'JUL02'
GROUP BY teacher.name,cohort.name