SELECT
  teacher.name AS teacher_name,
  student.name AS student_name,
  assignment.name AS assignment_name,
  assistance_request.completed_at - assistance_request.started_at AS request_duration
FROM assistance_request
  JOIN teacher ON teacher.id = teacher_id
  JOIN student ON student.id = student_id
  JOIN assignment ON assignment.id = assignment_id
ORDER BY request_duration DESC