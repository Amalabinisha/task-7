USE Binisha;

CREATE TABLE Student_1 (
    Student_1ID INT PRIMARY KEY,
    Name VARCHAR(100),
    Age INT
);

CREATE TABLE Courses_2 (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(100),
    Student_1ID INT,
    FOREIGN KEY (Student_1ID) REFERENCES Student_1(Student_1ID)
);

INSERT INTO Student_1 VALUES (101, 'Kavitha', 21);
INSERT INTO Student_1 VALUES (102, 'Thamarai', 20);
INSERT INTO Student_1 VALUES (103, 'Subha', 17);
INSERT INTO Student_1 VALUES (104, 'Swetha', 19);

INSERT INTO Courses_2 VALUES (321, 'Computer science', 101);
INSERT INTO Courses_2 VALUES (322, 'Mathematics', 102);
INSERT INTO Courses_2 VALUES (323, 'Physics', 103);
INSERT INTO Courses_2 VALUES (324, 'Botany', 104);

CREATE VIEW Student_1Courses AS
SELECT s.Name AS Student_1Name, s.Age, c.CourseName 
FROM Student_1 s
JOIN Courses_2 c ON s.Student_1ID = c.Student_1ID;

SELECT * FROM Student_1Courses;

CREATE VIEW Student_1NamesOnly AS
SELECT Name FROM Student_1;

