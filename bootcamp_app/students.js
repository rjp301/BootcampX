const { Pool } = require('pg');

const args = process.argv.slice(2);
console.log(args);

const pool = new Pool({
  host: 'localhost',
  database: 'bootcampx',
});

const queryString = `
  SELECT student.id, student.name, cohort.name AS cohort_name
  FROM student 
  JOIN cohort ON student.cohort_id = cohort.id
  WHERE cohort.name LIKE $1
  LIMIT $2;`;

const queryValues = [`%${process.argv[2]}%`, process.argv[3] || 5];


pool.query(queryString,queryValues)
  .then(res => {
    res.rows.forEach(user => {
      console.log(`${user.name} has an id of ${user.id} and was in the ${user.cohort_name} cohort`);
    });
  })
  .catch(err => console.error('query error', err.stack));