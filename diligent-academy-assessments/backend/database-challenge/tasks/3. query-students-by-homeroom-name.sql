-- Query to get all students in homeroom '9A'
SELECT s.name
FROM student s
JOIN student_homeroom sh ON s.id = sh.student_id
WHERE sh.homeroom_name = '9A';

-- Query to get all students in homeroom '9B'
SELECT s.name
FROM student s
JOIN student_homeroom sh ON s.id = sh.student_id
WHERE sh.homeroom_name = '9B';