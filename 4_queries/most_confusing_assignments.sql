/* SELECT assignments.id as id, assignments.name as name, assignments.day as day, assignments.chapter as chapter, count(assistance_requests.id) as total_request
FROM assignments
JOIN assistance_requests
ON assignments.id = assistance_requests.assignment_id
GROUP BY assignments.id
ORDER BY total_request; */




SELECT assignments.id, name, day, chapter, count(assistance_requests) as total_requests
FROM assignments
JOIN assistance_requests ON assignments.id = assignment_id
GROUP BY assignments.id
ORDER BY total_requests DESC;