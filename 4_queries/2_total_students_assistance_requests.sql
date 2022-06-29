-- Get the total number of assistance_requests for a student.
-- use 'Elliot Dickinson' for the student's name here.


SELECT count(*) as total_assistances , stu.name as name
FROM assistance_requests as req 
JOIN students as stu ON req.student_id = stu.id 
WHERE stu.name = 'Elliot Dickinson'
GROUP BY stu.name;