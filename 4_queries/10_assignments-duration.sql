/*
Total Assignments and duration

We need to be able to see the number of assignments that 
each day has and the total duration of assignments for each day.
*/

SELECT day, count(chapter) AS number_of_assignments, sum(duration) AS duration
  FROM assignments
  GROUP BY day
  ORDER BY day;
