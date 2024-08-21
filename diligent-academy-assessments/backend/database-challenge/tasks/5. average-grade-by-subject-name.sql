-- Query to get the average grade for 'Algebra'
SELECT
    subj.name AS subject_name,
    AVG(ss.grade) AS average_grade
FROM student_subject ss
JOIN subject subj ON ss.subject_id = subj.id
WHERE subj.name = 'Algebra'
GROUP BY subj.name;