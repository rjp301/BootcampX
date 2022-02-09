const { Pool } = require('pg');

const args = process.argv.slice(2);
console.log(args);

const pool = new Pool({
  host: 'localhost',
  database: 'bootcampx',
});

pool.query(`
SELECT student.id, student.name, cohort.name AS cohort_name
FROM student 
JOIN cohort ON student.cohort_id = cohort.id
WHERE cohort.name LIKE '%${args[0]}%'
LIMIT ${args[1] || 5};
`)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));
  