CREATE DATABASE IF NOT EXISTS job_mart;

SHOW DATABASES;
SELECT *
FROM information_schema.schemata;

USE job_mart;

CREATE SCHEMA IF NOT EXISTS staging;

-- DROP SCHEMA staging;

CREATE TABLE IF NOT EXISTS staging.preferred_roles( 
    role_id INTEGER,
    role_name VARCHAR




);

SELECT * 
FROM information_schema.tables
WHERE table_catalog = 'job_mart';

DROP TABLE IF EXISTS main.preferred_roles;