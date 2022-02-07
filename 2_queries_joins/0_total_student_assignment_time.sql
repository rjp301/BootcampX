SELECT sum(duration)
FROM student
JOIN assignment_submission
ON student.id = assignment_submission.student_id
WHERE name = 'Armand Hilll';