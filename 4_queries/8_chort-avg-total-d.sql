/*
Cohort Average Assistance Duration

We also need to know the average total amount of time being 
spent on an assistance request for each cohort. This is just 
the average of the total_duration column from the previous query.
*/

SELECT avg(total_duration) AS average_total_duration
FROM (
  SELECT sum(completed_at - started_at) AS total_duration
  FROM assistance_requests
  JOIN students ON students.id = student_id
  JOIN cohorts ON cohorts.id = cohort_id
  GROUP BY cohorts.name
) AS cohortsum;