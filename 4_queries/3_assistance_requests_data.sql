SELECT tea.name as teacher, stu.name as student, ass.name as assignment, (req.completed_at - started_at) as duration
FROM assistance_requests as req 
JOIN teachers as tea ON req.teacher_id = tea.id
JOIN students as stu ON req.student_id = stu.id
JOIN assignments as ass ON req.assignment_id = ass.id
ORDER BY duration;
