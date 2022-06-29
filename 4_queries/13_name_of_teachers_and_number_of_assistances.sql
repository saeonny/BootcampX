-- Perform the same query as before, but include the number of assistances as well.
SELECT tea.name as teacher , coh.name as cohorts, count(req.id) as total_assistances
FROM assistance_requests as req 
JOIN teachers as tea ON req.teacher_id = tea.id
JOIN students as stu ON req.student_id = stu.id
JOIN cohorts as coh ON coh.id = stu.cohort_id
WHERE coh.name = 'JUL02'
GROUP BY tea.name, coh.name
ORDER BY tea.name;