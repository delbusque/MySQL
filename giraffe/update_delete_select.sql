SELECT * FROM students;

UPDATE students SET major = 'Geology' WHERE major = 'Bio';

UPDATE students
SET
    university = 'SoftUni'
WHERE
    university = 'New Bulgarian';

SELECT
    student_id,
    name,
    major,
    university
FROM students
WHERE (
        university = 'SoftUni'
        OR university = 'PU'
    )
    AND major <> 'Geology'
ORDER BY university, student_id DESC;