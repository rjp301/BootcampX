SELECT name,id,email,phone
FROM student
WHERE email IS NULL OR phone IS NULL;