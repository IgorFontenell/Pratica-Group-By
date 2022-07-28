-- Questão 1 :

SELECT COUNT ("endDate") as currentExperiences FROM experiences;


-- Questão 2:

SELECT "userId" as id, COUNT("courseId") as educations
FROM educations
GROUP BY "userId"
ORDER BY "userId" ASC;


-- Questão 3:

SELECT u.name as writer, COUNT(t."recipientId") as "testimonailCount"
FROM testimonials t
JOIN users u ON u.id = t."writerId"
WHERE "writerId" = 435
GROUP BY u.name;


-- Questão 4:

SELECT MAX(j.salary) as "maximumSalary", r.name
FROM jobs j
JOIN roles r ON r.id = j."roleId"
WHERE j.active = true
GROUP BY r.name
ORDER BY "maximumSalary" ASC;


-- Bônus:

SELECT s.name as school, c.name as course, 
COUNT (e."userId") as "studentsCount", e.status as role
FROM educations e
JOIN schools s ON s.id = e."schoolId"
JOIN courses c ON c.id = e."courseId"
WHERE status = 'ongoing' OR status = 'finished'
GROUP BY s.name, c.name, e.status
ORDER BY "studentsCount" DESC
LIMIT 3;