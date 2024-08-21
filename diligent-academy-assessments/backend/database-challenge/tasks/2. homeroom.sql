CREATE TABLE IF NOT EXISTS homerooms (
    name VARCHAR(255) UNIQUE PRIMARY KEY
);

-- Insert homerooms
INSERT INTO homerooms (name) VALUES ('9A'), ('9B');

-- Create the student_homeroom table
CREATE TABLE IF NOT EXISTS student_homeroom (
    student_id INT REFERENCES student(id),
    homeroom_name VARCHAR(255) REFERENCES homerooms(name),
    PRIMARY KEY (student_id, homeroom_name)
);

-- Insert student homeroom assignments
INSERT INTO student_homeroom (student_id, homeroom_name) VALUES
(1, '9A'),  -- Assuming John's ID is 1
(2, '9A'),  -- Assuming Adam's ID is 2
(3, '9B');  -- Assuming Lucy's ID is 3

-- Add index for improved read operations
CREATE INDEX idx_student_homeroom_homeroom_name ON student_homeroom(homeroom_name);