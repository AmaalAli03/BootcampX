SELECT students.name as student, avg(assignment_submissions.duration) as average_assignment_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
WHERE end_date IS NULL
GROUP BY student
ORDER BY average_assignment_duration DESC;


SELECT students.name as student, avg(assignment_submissions.duration) as average_submissions_duration, avg(assignments.duration) as average_assignments_duration
FROM students
JOIN assignment_submissions ON student_id = students.id
JOIN assignments ON assignment_id = assignments.id
WHERE end_date IS NULL
GROUP BY student
HAVING avg(assignment_submissions.duration) < avg(assignments.duration)
ORDER BY average_submissions_duration asc;