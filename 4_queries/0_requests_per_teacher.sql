SELECT 
  teacher.name AS teacher,
  count(assistance_request.*) AS num_requests
FROM assistance_request 
JOIN teacher ON teacher.id = teacher_id
GROUP BY teacher.name
ORDER BY num_requests;