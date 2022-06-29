-- Get the average duration of assistance requests for each cohort.
SELECT coh.name as name, avg(req.completed_at - req.started_at) as average_assistance_time 
FROM assistance_requests as req 
JOIN students as stu ON req.student_id = stu.id
JOIN cohorts as coh ON stu.cohort_id = coh.id
GROUP BY coh.name
ORDER BY average_assistance_time ;