SELECT name,email,phone
FROM student
WHERE github IS NULL
AND end_date IS NOT NULL