/*
Most Confusing Assignments

Select the assignment's id, day, chapter, name and the total assistances.
Order by total assistances in order of most to least.
*/

SELECT assignments.id, name, day, chapter, count(assistance_requests.*) AS total_requests
  FROM assignments
  JOIN assistance_requests ON assignments.id = assignment_id
  GROUP BY assignments.id
  ORDER BY total_requests DESC;
