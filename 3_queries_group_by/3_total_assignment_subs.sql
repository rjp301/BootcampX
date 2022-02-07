SELECT 
  cohort.name AS cohort,
  count(assignment_submission.*) AS total_submissions
FROM assignment_submission
  JOIN student ON student.id = assignment_submission.student_id
  JOIN cohort ON cohort.id = student.cohort_id
GROUP BY cohort.name
ORDER BY total_submissions DESC;