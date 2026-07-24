-- Count Rows - Aggregations Only 
SELECT 
    COUNT(*)
FROM 
    job_postings_fact   ; 



-- Count Rows - Window Functions
SELECT 
    job_id ,
    COUNT(*) OVER ()
FROM 
    job_postings_fact;    

-- PARTITION BY - Find hourly salary
SELECT 
    job_id, 
    job_title_short,
    salary_hour_avg,
    AVG(salary_hour_avg) OVER ()
FROM job_postings_facts
LIMIT 10 ;    
        