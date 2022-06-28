SELECT sum(duration) as total_duration
FROM assignment_submissions as sub
JOIN students on sub.student_id = students.id
WHERE students.name = 'Ibrahim Schimmel';