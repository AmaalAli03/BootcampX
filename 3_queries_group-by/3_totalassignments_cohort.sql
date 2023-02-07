-- SELECT cohorts.name ,count(*) as total_students
-- FROM students, cohorts
-- WHERE cohorts(id)
-- ORDER BY count(*)asc;

SELECT cohorts.name as cohort_name, count(students.*) AS student_count 
FROM cohorts
JOIN students ON cohorts.id = cohort_id
GROUP BY cohort_name 
HAVING count(students.*) >= 18
ORDER BY student_count;