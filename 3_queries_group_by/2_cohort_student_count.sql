SELECT 
  cohort.name AS cohort_name, 
  count(student.*) AS student_count
FROM student 
JOIN cohort ON cohort.id = student.cohort_id
GROUP BY cohort.name
HAVING count(student.*) >= 18
ORDER BY student_count