const { Pool } = require('pg');

const args = process.argv.slice(2);
console.log(args);

const pool = new Pool({
  host: 'localhost',
  database: 'bootcampx',
});

const queryString = `
  SELECT
    DISTINCT teacher.name AS teacher,
    cohort.name AS cohort
  FROM assistance_request
    JOIN student ON student.id = student_id
    JOIN teacher ON teacher.id = teacher_id
    JOIN cohort ON cohort.id = student.cohort_id
  WHERE cohort.name LIKE $1
  ORDER BY teacher;`;

const queryValues = [`%${process.argv[2]}%`];

pool.query(queryString,queryValues)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));
  