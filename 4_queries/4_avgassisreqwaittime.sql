-- SELECT AVG(started_at-created_at) AS average_wait_time
-- FROM assistance_requests
-- JOIN students ON students.id = assistance_requests.student_id
-- ORDER BY average_wait_time DESC
-- LIMIT 1;
-- or 
SELECT avg(started_at-created_at) as average_wait_time
FROM assistance_requests;
