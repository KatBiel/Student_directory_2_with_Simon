DROP TABLE IF EXISTS students;
DROP SEQUENCE IF EXISTS students_id_seq;
DROP TABLE IF EXISTS cohorts;
DROP SEQUENCE IF EXISTS students_id_seq;

CREATE SEQUENCE IF NOT EXISTS cohorts_id_seq;

CREATE TABLE cohorts (
  id SERIAL PRIMARY KEY,
  name text,
  start_date date
);

CREATE SEQUENCE IF NOT EXISTS students_id_seq;

CREATE TABLE students (
  id SERIAL PRIMARY KEY,
  name text,
  cohort_id int,
  constraint fk_cohort foreign key(cohort_id) references cohorts(id) on delete cascade
);

INSERT INTO cohorts (name, start_date) VALUES ('Cohort A', '2023-01-01');
  -- ('Cohort B', '2023-02-01'),
  -- ('Cohort C', '2023-03-01');


INSERT INTO students (name, cohort_id) VALUES ('Student 1', 1);
  -- ('Student 2', 1),
  -- ('Student 3', 2),
  -- ('Student 4', 2),
  -- ('Student 5', 3),
  -- ('Student 6', 3);