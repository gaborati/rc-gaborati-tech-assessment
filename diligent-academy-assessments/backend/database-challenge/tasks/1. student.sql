CREATE TABLE IF NOT EXISTS student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE
);

-- Insert students
INSERT INTO student (name, email) VALUES ('John', 'john@school.com');
INSERT INTO student (name, email) VALUES ('Adam', 'adam@school.com');
INSERT INTO student (name, email) VALUES ('Lucy', 'lucy@school.com');