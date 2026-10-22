1. Create the Course Table

sql
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50),
    Credits INT
);

INSERT INTO Course VALUES
(201, 'Database Systems', 4),
(202, 'Data Structures', 3),
(203, 'Mathematics', 4);
2. Create the Enrollment Table

sql
CREATE TABLE Enrollment (
    EnrollmentID INT PRIMARY KEY,
    StudentID INT,
    CourseID INT
);

INSERT INTO Enrollment VALUES
(1, 1001, 201),
(2, 1001, 202),
(3, 1002, 203),
(4, 1003, 201);
3. LEFT JOIN Operation
A LEFT JOIN returns all rows from the left table (Course) and matching rows from the right table (Enrollment). If there is no match, NULL values are returned for the right table's columns.

SQL Query:


sql
SELECT
    Course.CourseID,
    Course.CourseName,
    Course.Credits,
    Enrollment.EnrollmentID,
    Enrollment.StudentID
FROM Course
LEFT JOIN Enrollment
ON Course.CourseID = Enrollment.CourseID;
