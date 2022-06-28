SELECT co.name as cohorts , count(sub.id) as total_submissions
FROM assignment_submissions as sub
JOIN students as st on sub.student_id = st.id
JOIN cohorts as co on st.cohort_id = co.id
GROUP BY co.name
ORDER BY total_submissions DESC;