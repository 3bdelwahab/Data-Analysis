create DATABASE student_grades;
use student_grades;
SELECT * FROM student_grades_assignment;

-- 1. Query the total number of records.

SELECT COUNT(*) AS total_records
FROM student_grades_assignment;


-- 2. Query the average grade of all students.

SELECT AVG(grade) AS avg_grade
FROM student_grades_assignment;


-- 3. Query the highest grade obtained.

SELECT MAX(grade) AS highest_grade
FROM student_grades_assignment;


-- 4. Query the lowest grade obtained.

SELECT MIN(grade) AS lowest_grade
FROM student_grades_assignment;


-- 5. Query the number of distinct students.

SELECT COUNT(DISTINCT studentid) AS total_students
FROM student_grades_assignment;


-- 6. Query the average grade for each course.

SELECT
    courseid,
    AVG(grade) AS avg_grade
FROM student_grades_assignment
GROUP BY courseid;


-- 7. Query the number of students in each department.

SELECT
    department,
    COUNT(DISTINCT studentid) AS total_students
FROM student_grades_assignment
GROUP BY department;


-- 8. Query the maximum grade for each course.

SELECT
    courseid,
    MAX(grade) AS max_grade
FROM student_grades_assignment
GROUP BY courseid;


-- 9. Query the minimum grade for each department.

SELECT
    department,
    MIN(grade) AS min_grade
FROM student_grades_assignment
GROUP BY department;


-- 10. Query the number of courses taken by each student.

SELECT
    studentid,
    COUNT(DISTINCT courseid) AS total_courses
FROM student_grades_assignment
GROUP BY studentid;


-- 11. Query courses where the average grade
-- is greater than 75.

SELECT
    courseid,
    AVG(grade) AS avg_grade
FROM student_grades_assignment
GROUP BY courseid
HAVING avg_grade > 75;


-- 12. Query students who have taken more than 3 courses.

SELECT
    studentid,
    COUNT(DISTINCT courseid) AS total_courses
FROM student_grades_assignment
GROUP BY studentid
HAVING total_courses > 3;


-- 13. Query departments where the average grade
-- is less than 65.

SELECT
    department,
    AVG(grade) AS avg_grade
FROM student_grades_assignment
GROUP BY department
HAVING avg_grade < 65;


-- 14. Query students whose maximum grade is 100.

SELECT
    studentid,
    MAX(grade) AS max_grade
FROM student_grades_assignment
GROUP BY studentid
HAVING max_grade = 100;


-- 15. Query courses that have been taken
-- by at least 20 students.

SELECT
    courseid,
    COUNT(DISTINCT studentid) AS total_students
FROM student_grades_assignment
GROUP BY courseid
HAVING total_students >= 20;

-- 16. Query students who have taken at least 4 courses
-- and whose average grade is greater than 80.

SELECT
    studentid,
    COUNT(DISTINCT courseid) AS total_courses,
    AVG(grade) AS avg_grade
FROM student_grades_assignment
GROUP BY studentid
HAVING total_courses >= 4
    AND avg_grade > 80;


-- 17. Query departments where the maximum grade
-- is at least twice the average grade.

SELECT
    department,
    MAX(grade) AS max_grade,
    AVG(grade) AS avg_grade
FROM student_grades_assignment
GROUP BY department
HAVING max_grade >= 2 * avg_grade;


-- 18. Query courses whose average grade
-- is higher than the overall average grade.

SELECT
    courseid,
    AVG(grade) AS avg_grade
FROM student_grades_assignment
GROUP BY courseid
HAVING avg_grade > (
    SELECT AVG(grade)
    FROM student_grades_assignment
);


-- 19. Query students whose lowest grade
-- is greater than 70.

SELECT
    studentid,
    MIN(grade) AS min_grade
FROM student_grades_assignment
GROUP BY studentid
HAVING min_grade > 70;


-- 20. Query students whose lowest grade
-- is greater than 70.

SELECT
    studentid,
    MIN(grade) AS min_grade
FROM student_grades_assignment
GROUP BY studentid
HAVING min_grade > 70;
