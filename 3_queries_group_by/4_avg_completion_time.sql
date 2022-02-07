SELECT 
  student.name as student, 
  avg(assignment_submission.duration) as average_assignment_duration
FROM student
JOIN assignment_submission ON student_id = student.id
GROUP BY student
ORDER BY average_assignment_duration DESC;