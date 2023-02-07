SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, COUNT(assistance_requests.*) AS total_assisstances
FROM cohorts
JOIN students ON cohort_id = cohorts.id
JOIN assistance_requests ON student_id= students.id
JOIN teachers ON teachers.id = teacher_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name,cohorts.name
ORDER BY teacher;