SELECT DISTINCT tea.name as teacher , coh.name as cohorts
FROM assistance_requests as req 
JOIN teachers as tea ON req.teacher_id = tea.id
JOIN students as stu ON req.student_id = stu.id
JOIN cohorts as coh ON coh.id = stu.cohort_id
WHERE coh.name = 'JUL02'
ORDER BY tea.name;