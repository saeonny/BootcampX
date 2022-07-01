const { Pool } = require('pg');
const param = process.argv;

const pool = new Pool({
  user: 'vagrant',
  password: '123',
  host: 'localhost',
  database: 'bootcampx'
});

// const cohort = param[2] ;


// pool.query(`
// SELECT DISTINCT tea.name as teacher
// FROM assistance_requests as req 
// JOIN teachers as tea ON req.teacher_id = tea.id
// JOIN students as stu ON req.student_id = stu.id
// JOIN cohorts  as coh ON stu.cohort_id = coh.id
// WHERE coh.name = '${cohort || 'JUL02'}'
// ORDER BY teacher
//  ;
// `)
// .then(res => {
//   res.rows.forEach(user => {
//     console.log(`${cohort}: ${user.teacher}`);
//   })
// }).catch(err => console.error('query error', err.stack));


const queryString = `
SELECT DISTINCT tea.name as teacher
FROM assistance_requests as req 
JOIN teachers as tea ON req.teacher_id = tea.id
JOIN students as stu ON req.student_id = stu.id
JOIN cohorts  as coh ON stu.cohort_id = coh.id
WHERE coh.name = $1
ORDER BY teacher
 ;
`

const cohort = param[2] || 'JUL2';
const values = [`${cohort}`];

pool.query(queryString,values)
.then(res => {
  res.rows.forEach(row => {
    console.log(`${values[0]}: ${row.teacher}`)
  })
})
.catch(err => console.error('query error', err.stack));



