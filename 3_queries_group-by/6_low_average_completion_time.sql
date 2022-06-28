SELECT st.name as student, avg(sub.duration) as average_assignment_duration , avg(ass.duration) as average_estimated_duration
FROM assignment_submissions as sub
JOIN assignments as ass ON sub.assignment_id = ass.id
JOIN students as st ON st.id = sub.student_id 
WHERE st.end_date is NULL
GROUP BY st.name
HAVING avg(sub.duration) < avg(ass.duration)
ORDER BY average_assignment_duration;