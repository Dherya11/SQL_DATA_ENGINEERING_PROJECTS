-- LESSONS/Lessons/1.9/1_EDA/1.24_priority_roles.sql
CREATE TABLE staging.job_priority_roles (
    role_id     INTEGER PRIMARY KEY,
    role_name   VARCHAR,
    priority_lvl INTEGER
);

INSERT INTO staging.job_priority_roles (role_id, role_name, priority_lvl)
VALUES(
    (1, 'Data Engineer',        1), 
    (2, 'Senior Data Engineer',   1), 
    (3, 'Data Engineer',         3);


SELECT * FROM staging.priority_roles