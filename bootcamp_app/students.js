const { Pool } = require('pg');

const arg = process.argv.slice(2);
//console.log(arg[1]);

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

pool.query(`SELECT students.id AS id, students.name AS student, cohorts.name AS cohort
    FROM students
    JOIN cohorts ON cohorts.id = cohort_id
    WHERE cohorts.name LIKE $1
    LIMIT $2;
  `, ['%'+arg[0]+'%', arg[1]]).then(res => {
    res.rows.forEach(user => {
      console.log(`${user.student} has an id of ${user.id} and was in the ${user.cohort} cohort`);
    })
  }).catch(err => console.error('query error', err.stack));

pool.end();