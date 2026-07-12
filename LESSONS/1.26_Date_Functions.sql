SELECT 
    job_posted_date,
    job_posted_date::DATE AS date,
    job_posted_date::TIME AS time,
    job_posted_date::TIMESTAMP AS timestamp,
    job_posted_date::TIMESTAMPTZ AS timestampz
FROM job_postings_fact
LIMIT 10;

SELECT 
    EXTRACT(YEAR FROM job_posted_date) AS job_posted_year
    FROM job_postings_fact;
