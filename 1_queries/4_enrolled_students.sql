SELECT name,id,cohort_id
FROM student
WHERE end_date IS NULL
ORDER BY cohort_id;