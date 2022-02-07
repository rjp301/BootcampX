SELECT cohort.name,sum(duration) AS total_duration
FROM assignment_submission
JOIN student ON student.id = assignment_submission.student_id
JOIN cohort ON student.cohort_id = cohort.id
GROUP BY cohort.name
