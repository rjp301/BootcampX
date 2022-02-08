SELECT
  assignment.id,
  assignment.day,
  assignment.chapter,
  assignment.name,
  count(assistance_request.*) AS total_requests
FROM assistance_request
JOIN assignment ON assignment.id = assignment_id
GROUP BY assignment.id
ORDER BY total_requests DESC