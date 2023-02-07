SELECT teachers.name AS name , count(assistance_requests.*) AS total_assisstances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;
 