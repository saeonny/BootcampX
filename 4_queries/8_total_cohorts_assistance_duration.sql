-- Get the total duration of all assistance requests for each cohort.


SELECT coh.name as cohorts, sum(completed_at - started_at) as total_duration
FROM assistance_requests as req 
JOIN students as stu ON req.student_id = stu.id
JOIN cohorts as coh ON stu.cohort_id = coh.id
GROUP BY coh.name
ORDER BY total_duration;