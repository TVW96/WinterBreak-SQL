-- create and use studentdemodatabase
CREATE DATABASE IF NOT EXISTS StudentDemoDatabase;
USE StudentDemoDatabase;

-- Create Students Table
CREATE TABLE Students
(
    student_id    INT AUTO_INCREMENT PRIMARY KEY,
    first_name    VARCHAR(50)  NOT NULL,
    last_name     VARCHAR(50)  NOT NULL,
    email         VARCHAR(100) NOT NULL UNIQUE,
    other_details TEXT
);

-- Create Demographics Table
CREATE TABLE Demographics
(
    demographic_id   INT AUTO_INCREMENT PRIMARY KEY,
    demographic_name VARCHAR(100) NOT NULL
);

-- Create Student_Demographics Junction Table
CREATE TABLE Student_Demographics
(
    student_id     INT NOT NULL,
    demographic_id INT NOT NULL,
    PRIMARY KEY (student_id, demographic_id),
    FOREIGN KEY (student_id) REFERENCES Students (student_id) ON DELETE CASCADE,
    FOREIGN KEY (demographic_id) REFERENCES Demographics (demographic_id) ON DELETE CASCADE
);