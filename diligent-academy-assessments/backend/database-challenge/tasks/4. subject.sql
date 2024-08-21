-- Create the subject table
CREATE TABLE IF NOT EXISTS subject (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

-- Insert subjects
INSERT INTO subject (name) VALUES ('Algebra'), ('Biology'), ('World History');

-- Create the student_subject table
CREATE TABLE IF NOT EXISTS student_subject (
    student_id INT REFERENCES student(id),
    subject_id INT REFERENCES subject(id),
    grade INT CHECK (grade BETWEEN 1 AND 5),  -- Assuming grades are between 1 and 5
    PRIMARY KEY (student_id, subject_id)
);

-- Insert grades for students into the student_subject table
INSERT INTO student_subject (student_id, subject_id, grade) VALUES
(1, 1, 3),  -- John: Algebra
(1, 2, 2),  -- John: Biology
(1, 3, 5),  -- John: World History
(2, 1, 4),  -- Adam: Algebra
(2, 2, 3),  -- Adam: Biology
(2, 3, 2),  -- Adam: World History
(3, 1, 5),  -- Lucy: Algebra
(3, 2, 4),  -- Lucy: Biology
(3, 3, 3);  -- Lucy: World History
