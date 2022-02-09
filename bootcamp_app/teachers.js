const { Pool } = require('pg');

const args = process.argv.slice(2);
console.log(args);

const pool = new Pool({
  host: 'localhost',
  database: 'bootcampx',
});

pool.query(`
SELECT
  DISTINCT teacher.name AS teacher,
  cohort.name AS cohort
FROM assistance_request
  JOIN student ON student.id = student_id
  JOIN teacher ON teacher.id = teacher_id
  JOIN cohort ON cohort.id = student.cohort_id
WHERE cohort.name LIKE '%${process.argv[2]}%'
ORDER BY teacher;
`)
  .then(res => {
    res.rows.forEach(row => {
      console.log(`${row.cohort}: ${row.teacher}`);
    });
  })
  .catch(err => console.error('query error', err.stack));
  