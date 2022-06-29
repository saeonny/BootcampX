-- List each assignment with the total number of assistance requests with it.

SELECT ass.id as id , ass.name as name, ass.day as day, ass.chapter as chapter, count(req.id) as total_requests
FROM assistance_requests as req 
JOIN assignments as ass ON req.assignment_id = ass.id
GROUP BY ass.id
ORDER BY total_requests DESC;