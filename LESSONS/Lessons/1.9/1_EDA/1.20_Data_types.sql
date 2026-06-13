SELECT 
  * 
FROM information_schema.columns
WHERE table_name = 'jobs_postings_facts';

DESCRIBE 
SELECT 
    job_title_short, 
    salary_year_avg
FROM 
    job_postings_fact;


SELECT CAST ('123'AS INTEGER) ;    

SELECT 
    
    CAST(company_id AS VARCHAR) || '-' CAST(company_id AS VARCHAR),
    CAST(job_work_from_home AS INT ) AS job_work_from_home,
    CAST(job_posted_date AS DATE) AS Job_posted_date,
    CAST(salary_year_avg AS DECIMAL(10, 0)) AS Salary_year_avg

    FROM 
    job_postings_fact
    WHERE salary_year_avg IS NOT NULL 
    LIMIT 10;
SELECT 
    
    company_id :: VARCHAR|| '-'|| company_id :: VARCHAR AS unique_id,
    job_work_from_home :: INT  AS job_work_from_home,
    job_posted_date :: DATE AS Job_posted_date,
    salary_year_avg :: DECIMAL(10, 0) AS Salary_year_avg

    FROM 
    job_postings_fact
    WHERE salary_year_avg IS NOT NULL 
    LIMIT 10;


 SELECT (3 + 5.5)::FLOAT;  