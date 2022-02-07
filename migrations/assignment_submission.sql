CREATE TABLE assignment (
  id SERIAL PRIMARY KEY NOT NULL,
  name VARCHAR(255),
  content TEXT,
  day INTEGER,
  chapter INTEGER,
  duration INTEGER
);

CREATE TABLE assignment_submission (
  id SERIAL PRIMARY KEY NOT NULL,
  assignment_id INTEGER REFERENCES assignment(id) ON DELETE CASCADE,
  student_id INTEGER REFERENCES student(id) ON DELETE CASCADE,
  duration INTEGER,
  submission_date DATE
);