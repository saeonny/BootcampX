SELECT sum(duration) as total_duration
FROM cohorts 
JOIN students ON cohorts.id = students.cohort_id
JOIN assignment_submissions as sub ON students.id = sub.student_id
WHERE cohorts.name = 'FEB12';