SELECT
  student.name as student,
  count(assistance_request.*) AS num_requests
FROM assistance_request
JOIN student ON student.id = student_id
GROUP BY student
ORDER BY num_requests;