-- Get the total number of assistance_requests for a teacher.
SELECT count(*) as total_assistances, tea.name as name
FROM assistance_requests as req 
JOIN teachers as tea ON req.teacher_id = tea.id
WHERE tea.name = 'Waylon Boehm'
GROUP BY tea.name;