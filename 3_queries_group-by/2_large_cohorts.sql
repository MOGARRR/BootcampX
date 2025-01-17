SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM students
JOIN cohorts ON cohort_id = cohorts.id
GROUP BY cohort_name
HAVING COUNT(students.cohort_id) >= 18
ORDER BY student_count;