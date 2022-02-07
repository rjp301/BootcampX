SELECT 
  student.name, 
  avg(assignment_submission.duration) AS avg_act_duration,
  avg(assignment.duration) AS avg_exp_duration
FROM assignment_submission
JOIN student ON student_id = student.id
JOIN assignment on assignment_id = assignment.id
GROUP BY student.name
HAVING avg(assignment_submission.duration) < avg(assignment.duration)
ORDER BY avg(assignment_submission.duration)