SELECT count(assistance_requests.*) AS total_assistances, teachers.name
  FROM assistance_requests
  JOIN teachers ON teachers.id = teacher_id
  GROUP BY teachers.name
  HAVING teachers.name = 'Waylon Boehm';